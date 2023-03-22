// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let kYCPrePareData = try? JSONDecoder().decode(KYCPrePareData.self, from: jsonData)

import Foundation

// MARK: - KYCPrePareData
struct KYCPrePareData: Codable {
    let status: Bool?
    let message: String?
    let error: KYCPrePareError?
    let data: KYCPreDataClass?
}

// MARK: - DataClass
struct KYCPreDataClass: Codable {
    let parseBody: KYCParseBody?
}

// MARK: - ParseBody
struct KYCParseBody: Codable {
    let timestamp: String?
    let account, workflowExecution: KYCAccount?
    let api: KYCAPI?
}

// MARK: - Account
struct KYCAccount: Codable {
    let id: String?
}

// MARK: - API
struct KYCAPI: Codable {
    let parts: KYCParts?
    let workflowExecution: String?
}

// MARK: - Parts
struct KYCParts: Codable {
}

// MARK: - Error
struct KYCPrePareError: Codable {
    let bdy: Bdy?
    let user : ErrorData?
    let parseBody :KYCPrePareParseNdy?
}

struct KYCPrePareParseNdy: Codable {
    let title: String?
    let status: Int?
    let detail: String?
}
// MARK: - Bdy
struct Bdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}
