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
    
    var baseUrl = ""
    
//    open func getAlamofire() {
//        AF.request("https://mbd.cookcountysupernetwork.com/ap/swift_math_get.asp", method: .post,  parameters: nil, encoding: JSONEncoding.default)
//            .responseJSON { response in
//                switch response.result {
//                case .success(let value):
//                    if let json = value as? [String: Any] {
//                        print(json["Result"] as? Int as Any)
//                    }
//                case .failure(let error):
//                    print(error)
//                }
//            }
//    }
    
    
    // Mark: - 1 .
    open func initJWTToken(first_name: String,last_name:String,password:String,email:String,token:String, completion: @escaping(_ : JWTToken? , ErrorBase?) -> Void) {
        let params : [String: String] = [
            "first_name" : first_name,
            "last_name" : last_name,
            "email" : email,
            "password" : password,
        ]
        
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.jwtToken.rawValue +  token
        
        ApiStore.shared.baseRequestApi(baseUrl, .post, params, nil) { (result: JWTToken?) in
            if result?.message == "Fail"{
                completion(nil,result?.error)
            }else if result?.message == "Success." {
                completion(result, nil)
            }
        }
    }
    
    // MARK: - 2. GET WORKFLOW Status API CAll
    func callApiMethodUpdateValues(_ accessToken: String, _ apiAuthorizationToken:String, completion: @escaping(_ : AccountTokenModel? , ErrorBase?) -> Void) {
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.token.rawValue +  accessToken
        
        let params = ["customerInternalReference": "1","workflowDefinition": ["key": 10032,"capabilities":["watchlistScreening":["additionalProperties": "string"]]],"callbackUrl": "https://www.google.com","userReference": "YOUR_USER_REFERENCE","tokenLifetime": "5m","web":["successUrl": "https://ipassreact.csdevhub.com/success","errorUrl": "https://ipassreact.csdevhub.com/error","locale": "en"]] as [String : Any]
        
        let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
        
        ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result: AccountTokenModel?) in
            if result?.message == "Fail"{
                completion(nil,result?.error)
            }else if result?.message == "Success." {
                completion(result, nil)
            }
        }
    }
    
    //Mark:- 3 WorkFlow Status
    func getWorkFlowStatus (_ accessToken:String, _ apiAuthorizationToken:String,_ accountId:String, _ workflowExecutionId:String, completion:@escaping (_ : WorkFlowStatusModel?, _ :  WorkFlowStatusError?)-> Void){
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.workFlowStatus.rawValue +  accessToken + "&accountId=\(accountId)" +  "&workflowExecutionId=\(workflowExecutionId)"
        let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
        ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: WorkFlowStatusModel?) in
            if result?.message == "Fail"{
                completion(nil,result?.error)
            }else if result?.message == "Success" {
                completion(result, nil)
            }
        }
    }
    // //Mark :-4 WorkFlow USer Details
    func getUserDetail (accessToken:String, apiAuthorizationToken:String, accountId:String, sessionId :String, email :String, workflowExecutionId:String, completion:@escaping (_ : UserDetailModel?, _ :  UserDetailError?)-> Void){
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.detailUser.rawValue +  accessToken + "&accountId=\(accountId)" +  "&workflowExecutionId=\(workflowExecutionId)" +  "&sessionId=\(sessionId)" +  "&email=\(email)"
        let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
        ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: UserDetailModel? ) in
            if result?.message == "Fail"{
                completion(nil,result?.error)
            }else if result?.message == "Success" {
                completion(result, nil)
            }
        }
    }
    //Mark :-4 Front Image Data
    func getUserFrontImage (accessToken:String, apiAuthorizationToken:String, credentialId:String, accountId :String, completion:@escaping (_ : FrontImageData?, _ :  Error111?)-> Void) {
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.frontimage.rawValue + "?credentialId=\(credentialId)" + "&token=\(accessToken)" + "&accountId=\(accountId)"
        let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
        ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: FrontImageData? ) in
            if result?.message == "Fail" {
                completion(nil,result?.error)
            } else if result?.message == "Success" {
                completion(result, nil)
            }
        }
    }
    
    
    //Mark :-4 Back Image Data
    func getbackImage (accessToken:String, apiAuthorizationToken:String, credentialId:String, accountId :String, completion:@escaping (_ : FrontImageData?, _ :  Error111?)-> Void) {
        let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.backImage.rawValue + "?credentialId=\(credentialId)" + "&token=\(accessToken)" + "&accountId=\(accountId)"
        let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
        ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: FrontImageData? ) in
            if result?.message == "Fail" {
                completion(nil,result?.error)
            } else if result?.message == "Success" {
                completion(result, nil)
            }
        }
        
        
        
        //Mark :-7 Front Image Data
        func getfaceImage (accessToken:String, apiAuthorizationToken:String, credentialId:String, accountId :String, completion:@escaping (_ : FrontImageData?, _ :  Error111?)-> Void) {
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.faceImage.rawValue + "?credentialId=\(credentialId)" + "&token=\(accessToken)" + "&accountId=\(accountId)"
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
            ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: FrontImageData? ) in
                if result?.message == "Fail" {
                    completion(nil,result?.error)
                } else if result?.message == "Success" {
                    completion(result, nil)
                }
            }
        }
        //Mark :-8 Liveness API
        func getUserlivenessImage1 (accessToken:String, apiAuthorizationToken:String, credentialId:String, accountId :String, completion:@escaping (_ : FrontImageData?, _ :  Error111?)-> Void) {
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.liveness1.rawValue + "?credentialId=\(credentialId)" + "&token=\(accessToken)" + "&accountId=\(accountId)"
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":apiAuthorizationToken]
            ApiStore.shared.baseRequestApi(baseUrl, .get,nil,headers.dictionary) { (result: FrontImageData? ) in
                if result?.message == "Fail" {
                    completion(nil,result?.error)
                } else if result?.message == "Success" {
                    completion(result, nil)
                }
            }
        }
        //Mark :-9 Delete account data API
        func deletAccountData(token:String,accountId:String,workflowExecutionId:String,authToken :String,completion :@escaping(_ : DeleteAccountDataModel?, _ : ErrorBase?) -> Void) {
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.deleteAccData.rawValue + token + "&accountId=\(accountId)" + "&workflowExecutionId=\(workflowExecutionId)"
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            
            ApiStore.shared.baseRequestApi(baseUrl, .delete, nil, headers.dictionary) { (result: DeleteAccountDataModel?) in
                if result?.message == "Fail"{
                    completion(nil,result?.error)
                }else if result?.message == "Success" {
                    completion(result, nil)
                }
            }
        }
        
        //Mark :-9 Delete account  API
        func deletAccount(token:String,accountId:String,workflowExecutionId:String,authToken :String,completion :@escaping(_ : DeleteAccountDataModel?, _ : ErrorBase?) -> Void) {
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpointWithoutIpass.rawValue + Endpoints.deleteAccData.rawValue + token + "&accountId=\(accountId)" + "&workflowExecutionId=\(workflowExecutionId)"
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            
            ApiStore.shared.baseRequestApi(baseUrl, .delete, nil, headers.dictionary) { (result: DeleteAccountDataModel?) in
                if result?.message == "Fail"{
                    completion(nil,result?.error)
                }else if result?.message == "Success" {
                    completion(result, nil)
                }
            }
        }
        //Mark :-11 Socail Media By Phonenp  API
        func GetSMAccByMobileNo(token:String,jwtToken:String,phoneNo:String, completion :@escaping(_ : SMPhoneModel?,_ : SMPhoneError?) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.smediaPhone.rawValue +  token
            let params = [ "phone_number": phoneNo]
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":jwtToken]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result: SMPhoneModel? ) in
                if result?.message == "Fail" {
                    // print(result?.error)
                    completion(nil,(result?.error)!)
                } else if result?.message == "Success" {
                    
                    completion(result, nil)
                }
            }
        }
        //Mark :-12  Socail Media By Email
        func  getSMAccByEmail(token:String,jwtToken:String,email:String, completion :@escaping(_ : GetSocialPassModel?, _ : GetSocialError?) -> Void){
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.smediaEmail.rawValue +  token
            let params = [ "email": email]
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":jwtToken]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result: GetSocialPassModel? ) in
                print(result as Any)
                if result?.message == "Fail" {
                    completion(nil,(result?.error)!)
                } else if result?.message == "Success" {
                    completion(result, nil)
                }
            }
        }
        
        //Mark :-13  Upload Passport
        func uploadPassport(token:String,authToken:String,imgData:String, completion : @escaping(_:PassPostModel?,_ :ErrorBase?  ) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingPostData.rawValue +  token
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            let params : [String: String] = [
                "image" : imgData,
            ]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result : PassPostModel?) in
                if result?.message == "Fail"{
                    print("Error----",result?.error as Any)
                    completion(nil,result?.error)
                } else if (result?.message == "Success"){
                    completion(result,nil)
                }
                
            }
        }
        
        
        //Mark :-14  Upload Driving Licence
        func uploadDrivingLic(token:String,authToken:String,imgData:String, completion : @escaping(_:PassPostModel?,_ :ErrorBase?  ) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingPostData.rawValue +  token
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            let params : [String: String] = [
                "image" : imgData,
            ]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result : PassPostModel?) in
                if result?.message == "Fail"{
                    print("Error----",result?.error as Any)
                    completion(nil,result?.error)
                } else if (result?.message == "Success"){
                    completion(result,nil)
                }
                
            }
        }
        
        //Mark :-15  Upload Front imaage of IDCard
        func uploadIDCardFrontImage(token:String,authToken:String,imgData:String, completion : @escaping(_:PassPostModel?,_ :ErrorBase?  ) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingPostData.rawValue +  token
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            let params : [String: String] = [
                "image" : imgData,
            ]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result : PassPostModel?) in
                if result?.message == "Fail"{
                    print("Error----",result?.error as Any)
                    completion(nil,result?.error)
                } else if (result?.message == "Success"){
                    completion(result,nil)
                }
                
            }
        }
        
        //Mark :-16  Upload Back imaage of IDCard
        func uploadIDCardBackImage(token:String,authToken:String,imgData:String, completion : @escaping(_:PassPostModel?,_ :ErrorBase?  ) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingPostData.rawValue +  token
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            let params : [String: String] = [
                "image" : imgData,
            ]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result : PassPostModel?) in
                if result?.message == "Fail"{
                    print("Error----",result?.error as Any)
                    completion(nil,result?.error)
                } else if (result?.message == "Success"){
                    completion(result,nil)
                }
                
            }
        }
        
        //Mark :-17  Upload Document
        func uploadDocument(token:String,authToken:String,imgData:String, completion : @escaping(_:PassPostModel?,_ :ErrorBase?  ) -> Void){
            
            let baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingPostData.rawValue +  token
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":authToken]
            let params : [String: String] = [
                "image" : imgData,
            ]
            ApiStore.shared.baseRequestApi(baseUrl, .post,params,headers.dictionary) { (result : PassPostModel?) in
                if result?.message == "Fail"{
                    print("Error----",result?.error as Any)
                    completion(nil,result?.error)
                } else if (result?.message == "Success"){
                    completion(result,nil)
                }
                
            }
        }
        
        ////Mark :-18-23  Uploaded Document Data
        func getDataOfType(token:String,jwtToken:String,apimId:String,documentType:String ,completion : @escaping(_ : [String : Any]?)->Void){
            
            switch(documentType){
            case "Passport":
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.passportGetData.rawValue +  token + "&apimId=\(apimId)"
            case "DrivingLicence":
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.drivingGetData.rawValue +  token + "&apimId=\(apimId)"
            case "FrontIDCard":
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.idCardGetFRNTData.rawValue +  token + "&apimId=\(apimId)"
            case "BackIDCard":
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.idCardGetBackData.rawValue +  token + "&apimId=\(apimId)"
            case "Document":
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.documentGetData.rawValue +  token + "&apimId=\(apimId)"
            default:
                self.baseUrl = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.documentGetData.rawValue +  token + "&apimId=\(apimId)"
            }
            
            let baseUrl1 = BaseUrl.baseUrl.rawValue + VersionEndpoint.userEndpoint.rawValue + Endpoints.idCardGetBackData.rawValue +  token + "&apimId=\(apimId)"
            let headers: HTTPHeaders = ["Content-Type": "application/json","Accept": "application/json","Authorization":jwtToken]
            ApiStore.shared.baseRequestApi11(baseUrl1, .get, nil,headers.dictionary) { response in
                completion(response)
            }
            
        }
    }
}
