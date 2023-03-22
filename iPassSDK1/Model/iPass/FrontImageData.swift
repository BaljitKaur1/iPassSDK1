import Foundation

// MARK: - GETIDCardFrontModel
struct FrontImageData: Codable {
    let status: Bool?
    let message: String?
    let error: Error111?
    let data : imageDataClass?
}
struct imageDataClass: Codable {
    let img: String
}
// MARK: - Error
struct Error111: Codable {
    let parseBody: ParseBody111?
    let user : ParseUser?
}
struct ParseUser: Codable {
    let itle: String?
    let status: Int?
    let detail: String?
}
// MARK: - ParseBody
struct ParseBody111: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}
