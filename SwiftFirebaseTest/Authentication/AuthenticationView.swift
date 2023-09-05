//
//  AuthenticationView.swift
//  SwiftFirebaseTest
//
//  Created by Batuhan Küçükyıldız on 5.09.2023.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink{
                   Text("Hello")
                }label: {
                    Text("Sign in With Email")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }.navigationTitle("SignIn")
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
