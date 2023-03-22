//
//  UserStatusError.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation

// MARK: - UserStatusError
struct UserStatusError: Codable {
    let uerror: UserError?
}

// MARK: - Error
struct UserError: Codable {
    let ustatusParse: UserStatusParse?
}

// MARK: - StatusParse
struct UserStatusParse: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}
