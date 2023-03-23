//
//  DeleteAccountDataModel.swift
//  DemoipAa
//
//  Created by Mobile on 02/03/23.
//

import Foundation

// MARK: - DeleteAccountDataModel
public struct DeleteAccountDataModel: Codable {
    let status: Bool?
    let message: String?
    let data: DeleteDataClass?
    let error: ErrorBase?
}

// MARK: - DataClass
public struct DeleteDataClass: Codable {
}
