//
//  DeleteAccountDataModel.swift
//  DemoipAa
//
//  Created by Mobile on 02/03/23.
//

import Foundation

// MARK: - DeleteAccountDataModel
struct DeleteAccountDataModel: Codable {
    let status: Bool?
    let message: String?
    let data: DeleteDataClass?
    let error: ErrorBase?
}

// MARK: - DataClass
struct DeleteDataClass: Codable {
}
