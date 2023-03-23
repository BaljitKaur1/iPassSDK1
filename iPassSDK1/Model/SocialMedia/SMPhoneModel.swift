// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sMPhoneModel = try? JSONDecoder().decode(SMPhoneModel.self, from: jsonData)

import Foundation

// MARK: - SMPhoneModel
public struct SMPhoneModel: Codable {
    let status: Bool?
    let message: String?
    let data: SMPhoneData?
    let error: SMPhoneError?
}

// MARK: - Error
public struct SMPhoneError: Codable {
    let bdy: SMPhoneBdy?
    let user: UserStatusParse?
}

// MARK: - Bdy
public struct SMPhoneBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}

// MARK: - SMPhoneModelData
public struct SMPhoneData: Codable {
    let resParse: SMResParse?
}

// MARK: - ResParse
public struct SMResParse: Codable {
    let success: Bool?
    let error: Error?
    let data: ResParseData?
}

// MARK: - ResParseData
public struct ResParseData: Codable {
    let number: Int?
    let valid, disposable: Bool?
    let type, country, carrier: String?
    let score: Int?
    let accountDetails: AccountDetails?
    let appliedRules: [AppliedRule]?

    enum CodingKeys: String, CodingKey {
        case number, valid, disposable, type, country, carrier, score
        case accountDetails = "account_details"
        case appliedRules = "applied_rules"
    }
}

// MARK: - AccountDetails
public struct AccountDetails: Codable {
    let facebook: Bukalapak?
    let google: Google?
    let twitter, instagram, yahoo, microsoft: Bukalapak?
    let snapchat: Bukalapak?
    let skype: Skype?
    let whatsapp, telegram, viber: Telegram?
    let kakao: Bukalapak?
    let ok: Ok?
    let zalo: Zalo?
    let line: Line?
    let flipkart, bukalapak, jdid: Bukalapak?
}

// MARK: - Bukalapak
public struct Bukalapak: Codable {
    let registered: Bool?
}

// MARK: - Google
public struct Google: Codable {
    let registered: Bool?
    let accountID, fullName: String?

    enum CodingKeys: String, CodingKey {
        case registered
        case accountID = "account_id"
        case fullName = "full_name"
    }
}

// MARK: - Line
public struct Line: Codable {
    let registered, name, photo: String?
}

// MARK: - Ok
public struct Ok: Codable {
    let registered: Bool?
    let age: String?
}

// MARK: - Skype
public struct Skype: Codable {
    let registered: Bool?
    let age: Int?
    let city: String?
    let bio: String?
    let country: String?
    let gender: Int?
    let language: String?
    let name, handle, id: String?
    let photo: String?
    let state: String?
}

// MARK: - Telegram
public struct Telegram: Codable {
    let registered: Bool?
    let photo: String?
    let lastSeen: String?
    let name: String?
    let about: String?

    enum CodingKeys: String, CodingKey {
        case registered, photo
        case lastSeen = "last_seen"
        case name, about
    }
}

// MARK: - Zalo
public struct Zalo: Codable {
    let registered: Bool?
    let dateOfBirth, name, uid: String?

    enum CodingKeys: String, CodingKey {
        case registered
        case dateOfBirth = "date_of_birth"
        case name, uid
    }
}

// MARK: - AppliedRule
public struct AppliedRule: Codable {
    let id, name, operation: String?
    let score: Int?
}

// MARK: - Error
public struct Error: Codable {
    let message : String?
}

// MARK: - Encode/decode helpers


