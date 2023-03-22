// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//  let UserDetailModel = try? JSONDecoder().decode(UserDetailModel.self, from: jsonData)

import Foundation

// MARK: - UserDetailModel
struct UserDetailModel: Codable {
    let status: Bool?
    let message: String?
    let data: UserDetailData?
    let error : UserDetailError?
}

// MARK: - DataClass
struct UserDetailData: Codable {
    let parseBody: ParseBody?
}

// MARK: - ParseBody
struct ParseBody: Codable {
    let workflow: Workflow
    let account: UserDetailAccount
    let createdAt, completedAt, wipedOutAt: String
    let credentials: [UserCredential]
    let decision: Decision
    let steps: Steps
    let capabilities: Capabilities
    let issupadmin, sessionsid, pubprivkey, email: String
}

// MARK: - Account
struct UserDetailAccount: Codable {
    let id: String
}

// MARK: - Capabilities
struct Capabilities: Codable {
}

// MARK: - Credential
struct UserCredential: Codable {
    let id, category: String
}

// MARK: - Decision
struct Decision: Codable {
    let type: String
    let details: Details
    let risk: Risk
}

// MARK: - Details
struct Details: Codable {
    let label: String
}

// MARK: - Risk
struct Risk: Codable {
    let score: Int
}

// MARK: - Steps
struct Steps: Codable {
    let href: String
}

// MARK: - Workflow
struct Workflow: Codable {
    let id, status, definitionKey, userReference: String
    let customerInternalReference: String
}

// MARK: - Error
struct UserDetailError: Codable {
    let parseBody: ParseErrorBody?
}

// MARK: - ParseBody
struct ParseErrorBody: Codable {
    let type, title: String?
    let status: Int?
    let detail, issupadmin, sessionsid, pubprivkey: String?
    let email: String?
}
