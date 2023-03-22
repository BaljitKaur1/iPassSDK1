//  Apis.swift
//  iPassSDK1
//  Created by Mobile on 08/02/23.

import UIKit
import Alamofire

open class Apis: NSObject {
    
    fileprivate struct Constants {
        static let shared = Apis()
    }
    
    open func testDemo() {
        print("=-=-=-===testDemo")
    }
    
    open func getAlamofire() {
        AF.request("https://mbd.cookcountysupernetwork.com/ap/swift_math_get.asp", method: .post,  parameters: nil, encoding: JSONEncoding.default)
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any] {
                        print(json["Result"] as? Int)
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
}
