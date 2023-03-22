// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let accountTokenModel = try? JSONDecoder().decode(AccountTokenModel.self, from: jsonData)

import Foundation

// MARK: - AccountTokenModel
struct AccountTokenModel: Codable {
    let status: Bool?
    let message: String?
    let data: AccountTokenData?
    let error: ErrorBase?
}

// MARK: - DataClass
struct AccountTokenData: Codable {
    let accdata: Accdata?
}

// MARK: - Accdata
struct Accdata: Codable {
    let timestamp: String?
    let account: Account?
    let web: Web?
    let sdk: SDK?
    let workflowExecution: WorkflowExecution?
}

// MARK: - Account
struct Account: Codable {
    let id: String?
}

// MARK: - SDK
struct SDK: Codable {
    let token: String?
}

// MARK: - Web
struct Web: Codable {
    let href, successURL, errorURL: String?

    enum CodingKeys: String, CodingKey {
        case href
        case successURL = "successUrl"
        case errorURL = "errorUrl"
    }
}

// MARK: - WorkflowExecution
struct WorkflowExecution: Codable {
    let id: String
    let credentials: [Credential]
}

// MARK: - Credential
struct Credential: Codable {
    let id, category: String
    let allowedChannels: [String]
    let api: API?
}

// MARK: - API
struct API: Codable {
    let token: String
    let parts: Parts
    let workflowExecution: String
}

// MARK: - Parts
struct Parts: Codable {
    let front, back, face: String?
}
