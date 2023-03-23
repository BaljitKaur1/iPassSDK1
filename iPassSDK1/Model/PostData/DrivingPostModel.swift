// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let drivingPostModel = try? JSONDecoder().decode(DrivingPostModel.self, from: jsonData)

import Foundation

// MARK: - DrivingPostModel
public struct DrivingPostModel: Codable {
    let status: Bool?
    let message: String?
    let data: DPDataClass?
}

// MARK: - DataClass
public struct DPDataClass: Codable {
    let resp: DPResp?
}

// MARK: - Resp
public struct DPResp: Codable {
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
