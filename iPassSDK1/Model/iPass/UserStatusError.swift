//
//  UserStatusError.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation

// MARK: - UserStatusError
public struct UserStatusError: Codable {
    let uerror: UserError?
}

// MARK: - Error
public struct UserError: Codable {
    let ustatusParse: UserStatusParse?
}

// MARK: - StatusParse
public struct UserStatusParse: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}
