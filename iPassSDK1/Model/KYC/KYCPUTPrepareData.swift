// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let kYCPUTPrePareData = try? JSONDecoder().decode(KYCPUTPrePareData.self, from: jsonData)

import Foundation

// MARK: - KYCPUTPrePareData
public struct KYCPUTPrePareData: Codable {
    let status: Bool?
    let message: String?
    let error: KYCPUTPrePareError?
    let data: KYCPUTPrePareDataDataClass?
}

// MARK: - DataClass
public struct KYCPUTPrePareDataDataClass: Codable {
    let parsebody: Parsebody?
}

// MARK: - Parsebody
public struct Parsebody: Codable {
    let body: String?
}

// MARK: - Error
public struct KYCPUTPrePareError: Codable {
    let bdy: KYCPUTPrePareBdy?
    let user :  ErrorData?
}

// MARK: - Bdy
public struct KYCPUTPrePareBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}
