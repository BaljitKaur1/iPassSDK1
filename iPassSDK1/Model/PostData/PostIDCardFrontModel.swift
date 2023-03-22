
import Foundation

// MARK: - IDCardFrontModel
struct PostIDCardFrontModel: Codable {
    let status: Bool?
    let message: String?
    let data: PostDataClass?
    let error : PostIDCardError?
}
struct PostIDCardError: Codable {
    let bdy: PostIDCardBdy?
    let user : UserStatusParse?
}

// MARK: - Bdy
struct PostIDCardBdy: Codable {
    let type, title, status, detail: String?
    let instance: String?
}

// MARK: - DataClass
struct PostDataClass: Codable {
    let resp: PostResp?
}

// MARK: - Resp
struct PostResp: Codable {
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
