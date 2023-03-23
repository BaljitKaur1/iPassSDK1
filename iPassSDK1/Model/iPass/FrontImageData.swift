import Foundation

// MARK: - GETIDCardFrontModel
public struct FrontImageData: Codable {
    let status: Bool?
    let message: String?
    let error: Error111?
    let data : imageDataClass?
}
public struct imageDataClass: Codable {
    let img: String
}
// MARK: - Error
public struct Error111: Codable {
    let parseBody: ParseBody111?
    let user : ParseUser?
}
public struct ParseUser: Codable {
    let itle: String?
    let status: Int?
    let detail: String?
}
// MARK: - ParseBody
public struct ParseBody111: Codable {
    let type, title: String?
    let status: Int?
    let detail: String?
}
