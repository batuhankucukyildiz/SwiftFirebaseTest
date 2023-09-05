//
//  AuthenticationManager.swift
//  SwiftFirebaseTest
//
//  Created by Batuhan Küçükyıldız on 5.09.2023.
//

import Foundation
import FirebaseAuth


struct AuthDataResultModel{
    let uid : String
    let email: String?
    let photoUrl : String?
    
    init(user : User){
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString // absoluteString bakılması gerekiyor.
    }
}


class AuthenticationManager {
    static let shared = AuthenticationManager()
    private init(){}
    
    func creatUser(email : String , password : String ) async throws -> AuthDataResultModel {
       let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
}
