// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let kYCPrePareData = try? JSONDecoder().decode(KYCPrePareData.self, from: jsonData)

import Foundation

// MARK: - KYCPrePareData
public struct KYCPrePareData: Codable {
    let status: Bool?
    let message: String?
    let error: KYCPrePareError?
    let data: KYCPreDataClass?
}

// MARK: - DataClass
public struct KYCPreDataClass: Codable {
    let parseBody: KYCParseBody?
}

// MARK: - ParseBody
public struct KYCParseBody: Codable {
    let timestamp: String?
    let account, workflowExecution: KYCAccount?
    let api: KYCAPI?
}

// MARK: - Account
public struct KYCAccount: Codable {
    let id: String?
}

// MARK: - API
public struct KYCAPI: Codable {
    let parts: KYCParts?
    let workflowExecution: String?
}

// MARK: - Parts
public struct KYCParts: Codable {
}

// MARK: - Error
public struct KYCPrePareError: Codable {
    let bdy: Bdy?
    let user : ErrorData?
    let parseBody :KYCPrePareParseNdy?
}

public struct KYCPrePareParseNdy: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
// MARK: - Bdy
public struct Bdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}
