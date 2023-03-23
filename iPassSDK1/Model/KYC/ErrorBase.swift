//
//  ErrorBase.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation

public struct ErrorBase: Codable {
    let user: ErrorData?
    let jwtError : JWTError?
}

// MARK: - ErrorUser
public struct ErrorData: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
public struct JWTError: Codable {
    let bdy: Bdy?
}

// MARK: - Bdy
public struct JWTBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}
