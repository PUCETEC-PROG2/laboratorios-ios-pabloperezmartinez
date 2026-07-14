//
//  GithubService.swift
//  GithubClient
//
//  Created by Pablo Pérez Martínez on 14/7/26.
//

import Foundation
import Alamofire

class GithubService {
    static let shared = GithubService()
    private let baseUrl = AppConfig.apiBaseURL
    
    private init() {}
    
    private var headers: HTTPHeaders {
        [
            "Authorization": "Bearer \(AppConfig.apiToken)"
        ]
    }
    
    func getRepositories() async throws -> [Repository] {

        let response = await AF.request(
            "\(baseUrl)/user/repos",
            method: .get,
            parameters: [
                "sort": "created",
                "direction": "desc",
                "per_page": 100,
                "affiliation": "owner"
            ],
            headers: headers
        )
        .validate(statusCode: 200..<300)
        .serializingDecodable([Repository].self)
        .response

        // Imprimir información de depuración
        print("Status Code: \(response.response?.statusCode ?? -1)")

        if let data = response.data,
           let json = String(data: data, encoding: .utf8) {
            print("Response Body:")
            print(json)
        }

        switch response.result {
        case .success(let repositories):
            return repositories

        case .failure(let error):
            print("=== Alamofire Error ===")
            print(error)

            if let afError = error.asAFError {
                print("AFError: \(afError)")
                print("Response Code: \(afError.responseCode ?? -1)")
                print("Localized Description: \(afError.localizedDescription)")
                print("Underlying Error: \(String(describing: afError.underlyingError))")
            }

            throw error
        }
    }
}
