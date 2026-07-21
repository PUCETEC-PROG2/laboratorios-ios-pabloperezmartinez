//
//  GithubService.swift
//  GithubClient
//
//  Created by Usuario invitado on 21/7/26.
//

import Foundation
import Alamofire

class GithubService {
    static let shared = GithubService()
    private let baseUrl = AppConfig.apiBaseURL
    
    private init() {}
    
    private var headers: HTTPHeaders {
        [.authorization(bearerToken: AppConfig.apiToken)]
    }
    
    func getRepositories() async throws -> [Repository] {
        let response = await AF.request(
            "\(baseUrl)/user/repos",
            method: .get,
            parameters: [
                "sort": "created",
                "direction": "desc",
                "per_page": 100,
                "affiliation": "owner",
                "t": NSDate().timeIntervalSince1970
            ],
            headers: headers
        )
        .validate(statusCode: 200..<300)
        .serializingDecodable([Repository].self)
        .response
        
        if let data = response.data,
           let json = String(data: data, encoding: .utf8) {
            print ("***** Respuesta: *******")
            print(json)
        }
        
        switch response.result {
            case .success(let repositories):
                return repositories
            case .failure(let error):
                print(error)
                throw error
        }
    }
    
}
