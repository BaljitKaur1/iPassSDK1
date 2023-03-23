// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let passPostModel = try? JSONDecoder().decode(PassPostModel.self, from: jsonData)

import Foundation

// MARK: - PassPostModel
public struct PassPostModel: Codable {
    let status: Bool?
    let message: String?
    let data: PassDataClass?
    let error: ErrorBase?
}

// MARK: - DataClass
public struct PassDataClass: Codable {
    let resp: Resp
}
public struct PassportError: Codable {
    let bdy: PassportBdy?
    let userError : UserStatusParse?
}

// MARK: - Bdy
public struct PassportBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}

// MARK: - Resp
public struct Resp: Codable {
    let contentLength: String
    let operationLocation: String
    let xEnvoyUpstreamServiceTime, apimRequestID, strictTransportSecurity, xContentTypeOptions: String
    let xMSRegion, date, connection: String

    enum CodingKeys: String, CodingKey {
        case contentLength = "content-length"
        case operationLocation = "operation-location"
        case xEnvoyUpstreamServiceTime = "x-envoy-upstream-service-time"
        case apimRequestID = "apim-request-id"
        case strictTransportSecurity = "strict-transport-security"
        case xContentTypeOptions = "x-content-type-options"
        case xMSRegion = "x-ms-region"
        case date, connection
    }
}
