//
//  LoginView.swift
//  MealMonkey
//
//  Created by Usama Khalid on 07/06/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack(alignment: .center, spacing: 20) {
                Text("Login")
                    .font(.system(size: 30))
                    .padding(.top, 10)
                Text("Add your details to login")
                    .foregroundStyle(.detailsText)
                PaddedTextField(text: "Your Email", value: $username)
                    .frame(width: geometry.size.width * 0.8, height: 56)
                    .onSubmit {
                        print(username)
                    }
            }
            .frame(width: geometry.size.width)
        })
    }
}

struct PaddedTextField: View {
    
    var text: String = ""
    @Binding var value: String
    
    var body: some View {
        TextField(text, text: $value)
            .padding()
            .background(.textFieldBackground)
            .clipShape(.capsule)
    }
}

#Preview {
    LoginView()
}
