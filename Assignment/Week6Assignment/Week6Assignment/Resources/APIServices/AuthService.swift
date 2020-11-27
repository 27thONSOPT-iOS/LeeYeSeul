//
//  AuthService.swift
//  Week6Assignment
//
//  Created by 이예슬 on 2020/11/27.
//

import Foundation
import Alamofire

struct AuthService {
    static let shared = AuthService()
    
    func signIn(email: String, password: String, completion: @escaping (NetworkResult<Any>) -> ()){
        
        let url = APIConstants.signinURL
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let body: Parameters = [
            "email": email,
            "password" : password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { (response) in
            
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {
                    return
                }
                guard let data = response.value else {
                    return
                }
                completion(judgeSigningData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    func signUp(email: String, password: String,username:String,completion: @escaping (NetworkResult<Any>) -> ()){
        
        let url = APIConstants.signupURL
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let body: Parameters = [
            "email": email,
            "password" : password,
            "userName" : username
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { (response) in
            
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {
                    return
                }
                guard let data = response.value else {
                    return
                }
                completion(judgeSigningData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeSigningData(status: Int, data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<SigningData>.self, from: data) else {
            return .pathErr
        }
        guard let data = decodedData.data else{
            return .requestErr(decodedData.message)
        }
        switch status {
        case 200:
            return .success(data)
        case 400:
            return .requestErr(decodedData.message)
        case 500:
            return .serverErr
        default:
            return .pathErr
        }
        
    }
}
