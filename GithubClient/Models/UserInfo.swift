//
//  UserInfo.swift
//  GithubClient
//
//  Created by Pablo Pérez Martínez on 14/7/26.
//

import Foundation

struct UserInfo: Decodable {
    let login: String
    let name: String?
    let avatarUrl: String
    let bio: String?
    
    enum CodingKeys: String, CodingKey {
        case login
        case name
        case avatarUrl = "avatar_url"
        case bio
    }
}
