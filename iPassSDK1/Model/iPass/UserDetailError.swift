//
//  UserDetailError.swift
//  DemoipAa
//
//  Created by Mobile on 01/03/23.
//

import Foundation

// MARK: - UserDetailError
struct UserDetailGetImageModel: Codable {
    let status: Bool?
    let message: String?
    let error: ErrorBase?
}
struct userFaceDataClass: Codable {
    let img: String
}
