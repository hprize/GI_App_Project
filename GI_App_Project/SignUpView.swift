//
//  SignUpView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var retrySignUp = false
    @State var errorMessage = ""
    
    var body: some View {
        VStack {
            TextField(
                "이름을 입력해주세요.",
                text: $fullName
            )
            .frame(width: 300, height: 51)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(26)
            .overlay(RoundedRectangle(cornerRadius: 26).stroke(Color(hex: 0xD9D9D9)) .frame(width: 333, height: 51))
            .padding([.horizontal], 24)
            .textInputAutocapitalization(.never)
            
            TextField(
                "이메일을 입력해주세요.",
                text: $email
            )
            .frame(width: 300, height: 51)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(26)
            .overlay(RoundedRectangle(cornerRadius: 26).stroke(Color(hex: 0xD9D9D9)) .frame(width: 333, height: 51))
            .padding([.horizontal], 24)
            .textInputAutocapitalization(.never)
            
            SecureField(
                "비밀번호를 입력해주세요.",
                text: $password
            )
            .frame(width: 300, height: 51)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 4)
            .cornerRadius(26)
            .overlay(RoundedRectangle(cornerRadius: 26).stroke(Color(hex: 0xD9D9D9)) .frame(width: 333, height: 51))
            .padding([.horizontal], 24)
            .textInputAutocapitalization(.never)
            
            Button {
                Task {
                    do {
                        try await authViewModel.registerUser(withEmail: email, password: password, fullName: fullName)
                    } catch {
                        retrySignUp = true
                        errorMessage = error.localizedDescription
                        print("DEBUG: Failed to sign up \(error.localizedDescription)")
                    }
                }
            } label: {
                Text("회원가입")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 333,height: 64)
                    .background(Color(hex: 0x5762EA))
                    .cornerRadius(36)
            }
            
            
            Button {
                authViewModel.loginState = .loggedOut
            } label: {
                Text("이미 회원이신가요?")
                    .foregroundColor(Color(hex: 0x5762EA))
                
            }
            
        }
        .alert("회원가입 실패", isPresented: $retrySignUp) {
            Button {
                retrySignUp = false
            } label: {
                Text("다시 시도하기")
            }
        } message: {
            Text("\(errorMessage)")
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
