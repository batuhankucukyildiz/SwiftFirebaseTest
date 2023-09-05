//
//  SignInEmailView.swift
//  SwiftFirebaseTest
//
//  Created by Batuhan Küçükyıldız on 5.09.2023.
//

import SwiftUI


@MainActor
final class SignInEmailViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""

}

struct SignInEmailView: View {
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Email : " , text: $viewModel.email)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                SecureField("Password : " , text: $viewModel.password)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                
                Button(action: {}) {
                    Text("Sign in")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        
                }
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.top, 10)
                
                
            }.padding(.horizontal)
                .navigationTitle("Sign in with Email")
        }
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInEmailView()
    }
}
