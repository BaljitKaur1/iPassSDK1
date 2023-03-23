//
//  KYCModel.swift
//  DemoipAa
//
//  Created by Mobile on 02/03/23.
//



import Foundation


//Optional("{\"status\":true,\"message\":\"Fail\",\"error\":{\"bdy\":{\"type\":\"about:blank\",\"title\":\"Bad Request: wrong value for the accountId\",\"status\":\"400\",\"detail\":\"[]\",\"instance\":\"/api/v1/accounts/e25d34f0-98af-4e41-a09c-4a2131409953000\"}},\"data\":{}}")

// MARK: - KYCError
public struct KYCModel: Codable {
    let status: Bool?
    let message: String?
    let error: KYCError?
    let data: KYCDataClass?
    //let data: DataClass
}

// MARK: - DataClass
public struct KYCDataClass: Codable {
    //let bdy: KYCDataBdy?
}

// MARK: - Error
public struct KYCError: Codable {
    let bdy: KYCBdy?
    let user :  ErrorData?
    //let user: KYCErrorUserDetail?
}

// MARK: - User
public struct KYCErrorUserDetail: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}


// MARK: - Bdy
public struct KYCBdy: Codable {
    let type, title: String?
    let status: String?
    let detail: String?
    let instance: String?
}

// MARK: - Bdy
public struct KYCDataBdy: Codable {
    let timestamp: String?
    let account: KYCDatAccount?
    let workflowExecution: KYCDatWorkflowExecution?
}

// MARK: - Account
public struct KYCDatAccount: Codable {
    let id: String?
}

// MARK: - WorkflowExecution
public struct KYCDatWorkflowExecution: Codable {
    let id: String?
    let credentials: [KYCDatCredential]?
}

// MARK: - Credential
public struct KYCDatCredential: Codable {
    let id, category: String?
    let allowedChannels: [String]?
    let api: KYCDatAPI?
}

// MARK: - API
public struct KYCDatAPI: Codable {
    let token: String?
    let parts: KYCDatParts?
    let workflowExecution: String?
}

// MARK: - Parts
public struct KYCDatParts: Codable {
    let prepared_data: String?
}
