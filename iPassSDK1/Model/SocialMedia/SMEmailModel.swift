// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sMEmailModel = try? JSONDecoder().decode(SMEmailModel.self, from: jsonData)

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let getPassModel = try? JSONDecoder().decode(GetPassModel.self, from: jsonData)

import Foundation

// MARK: - GetPassModel
struct GetSocialPassModel: Codable {
    let status: Bool?
    let message: String?
    let data: GetSocialPassModelData?
    let error: GetSocialError?
    
}

// MARK: - GetPassModelData
struct GetSocialPassModelData: Codable {
    let resParse: GetSocialResParse?
}

// MARK: - ResParse
struct GetSocialResParse: Codable {
    let success: Bool?
    let error: GetSocialError?
    let data: GetSocialResParseData?
}

// MARK: - ResParseData
struct GetSocialResParseData: Codable {
    let email: String?
    let score: Int?
    let deliverable: Bool?
    let domainDetails: GetSocialDomainDetails?
    let accountDetails: GetSocialAccountDetails? //issue
    let breachDetails: GetSocialBreachDetails?
    let appliedRules: [GetSocialAppliedRule]?
    
    enum CodingKeys: String, CodingKey {
        case email, score, deliverable
        
        case domainDetails = "domain_details"
        case accountDetails = "account_details"
        case breachDetails = "breach_details"
        case appliedRules = "applied_rules"
    }
}

// MARK: - AccountDetails
struct GetSocialAccountDetails: Codable {
    let apple, ebay: GetSocialAdobe?
    let amazon, qzone, adobe, mailru: GetSocialAdobe?
    let wordpress, imgur, disneyplus, netflix: GetSocialAdobe?
    let jdid, flipkart, bukalapak, archiveorg: GetSocialAdobe?
    let lazada, zoho, samsung, evernote: GetSocialAdobe?
    let envato, patreon, tokopedia, rambler: GetSocialAdobe?
    let quora, atlassian: GetSocialAdobe?
    let kakao, booking: GetSocialAdobe?
    let weibo, yahoo, discord: GetSocialAdobe?
    let spotify, tumblr, twitter, vimeo: GetSocialAdobe?
    let microsoft, myspace, pinterest: GetSocialAdobe?
    let github: GetSocialAdobe?
    let instagram, lastfm: GetSocialAdobe?
    
    let facebook: GetSocialFacebook?
    let flickr: GetSocialFlickr?
    
    
    let foursquare: GetSocialFoursquare?
    let google: GetSocialGoogle?
    let gravatar: GetSocialGravatar?
    let linkedin: GetSocialLinkedin?
    let skype: GetSocialSkype?
    let ok: GetSocialOk?
    let airbnb: GetSocialAirbnb?
}

// MARK: - Adobe
struct GetSocialAdobe: Codable {
    let registered: Bool?
}

// MARK: - Airbnb
struct GetSocialAirbnb: Codable {
    let registered: Bool?
    let about, createdAt, firstName: String?
    let identityVerified, location, image, revieweeCount: String?
    let trips, work: String?
    
    enum CodingKeys: String, CodingKey {
        case registered, about
        case createdAt = "created_at"
        case firstName = "first_name"
        case identityVerified = "identity_verified"
        case location, image
        case revieweeCount = "reviewee_count"
        case trips, work
    }
}

// MARK: - Facebook
struct GetSocialFacebook: Codable {
    let registered: Bool?
    let url, name, photo: String?
}

// MARK: - Flickr
struct GetSocialFlickr: Codable {
    let registered: Bool?
    let username: String?
}

// MARK: - Foursquare
struct GetSocialFoursquare: Codable {
    let registered: Bool?
    let bio: String?
    let photo: String?
    let profileURL: String?
    
    enum CodingKeys: String, CodingKey {
        case registered, bio, photo
        case profileURL = "profile_url"
    }
}

// MARK: - Google
struct GetSocialGoogle: Codable {
    let registered: Bool?
    let photo: String?
}

// MARK: - Gravatar
struct GetSocialGravatar: Codable {
    let registered: Bool?
    let location, name: String?
    let profileURL: String?
    let username: String?
    
    enum CodingKeys: String, CodingKey {
        case registered, location, name
        case profileURL = "profile_url"
        case username
    }
}

// MARK: - Linkedin
struct GetSocialLinkedin: Codable {
    let registered, url, name, company: String?
    let title, location, website, twitter: String?
    let photo, connectionCount: String?
    
    enum CodingKeys: String, CodingKey {
        case registered, url, name, company, title, location, website, twitter, photo
        case connectionCount = "connection_count"
    }
}

// MARK: - Ok
struct GetSocialOk: Codable {
    let registered: Bool?
    let city: String?
    let age, dateJoined: Int?
    
    enum CodingKeys: String, CodingKey {
        case registered, city, age
        case dateJoined = "date_joined"
    }
}

// MARK: - Skype
struct GetSocialSkype: Codable {
    let registered: Bool?
    let country, city: String?
    let gender: Int?
    let name, id, handle: String?
    let bio: String?
    let age: Int?
    let language, state: String?
    let photo: String?
}

// MARK: - AppliedRule
struct GetSocialAppliedRule: Codable {
    let id, name, operation: String?
    let score: Int?
}

// MARK: - BreachDetails
struct GetSocialBreachDetails: Codable {
    let haveibeenpwnedListed: Bool?
    let numberOfBreaches: Int?
    let firstBreach: String?
    let breaches: [GetSocialBreach]?
    
    enum CodingKeys: String, CodingKey {
        case haveibeenpwnedListed = "haveibeenpwned_listed"
        case numberOfBreaches = "number_of_breaches"
        case firstBreach = "first_breach"
        case breaches
    }
}

// MARK: - Breach
struct GetSocialBreach: Codable {
    let name, domain, date: String?
}

// MARK: - DomainDetails
struct GetSocialDomainDetails: Codable {
    let domain, tld: String?
    let registered: Bool?
    let created, updated, expires, registrarName: String?
    let registeredTo: String?
    let disposable, free, custom, dmarcEnforced: Bool?
    let spfStrict, validMX, acceptAll, suspiciousTLD: Bool?
    let websiteExists: Bool?
    
    enum CodingKeys: String, CodingKey {
        case domain, tld, registered, created, updated, expires
        case registrarName = "registrar_name"
        case registeredTo = "registered_to"
        case disposable, free, custom
        case dmarcEnforced = "dmarc_enforced"
        case spfStrict = "spf_strict"
        case validMX = "valid_mx"
        case acceptAll = "accept_all"
        case suspiciousTLD = "suspicious_tld"
        case websiteExists = "website_exists"
    }
}

// MARK: - Error
struct GetSocialError: Codable {
    let user: UserStatusParse?
    let message: String?
}

// MARK: - Encode/decode helpers

//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
