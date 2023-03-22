//
//  ErrorBase.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation

struct ErrorBase: Codable {
    let user: ErrorData?
    let jwtError : JWTError?
}

// MARK: - ErrorUser
struct ErrorData: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
struct JWTError: Codable {
    let bdy: Bdy?
}

// MARK: - Bdy
struct JWTBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}
