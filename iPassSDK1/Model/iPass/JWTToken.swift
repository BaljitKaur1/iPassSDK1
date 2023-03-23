//
//  JWTToken.swift
//  DemoipAa
//
//  Created by Mobile on 28/02/23.
//

import Foundation
// MARK: - JWTToken
public struct JWTToken: Codable {
    let status: Bool?
    let message: String?
    let data: DataClass?
    let error: ErrorBase?
}

// MARK: - DataClass
public struct DataClass: Codable {
    let user: User?
}

// MARK: - User
public struct User: Codable {
    let firstName, lastName, email, password: String?
    let id: String?
    let v: Int?
    let token: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case email, password
        case id = "_id"
        case v = "__v"
        case token
    }
}

