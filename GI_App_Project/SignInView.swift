//
//  SignInView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var retrySignIn = false
    @State var email: String = ""
    @State var password: String = ""
    @State var errorMessage = ""

    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image("GI_ImageLogo_Blue")
                    .resizable()
                    .frame(width: 45,height: 45.08)
                Image("GI_TextLogo_Blue")
                    .resizable()
                    .frame(width: 90,height: 28.28)
            }
            Spacer()
                .frame(height: 78)
            VStack {
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
                
                Spacer()
                    .frame(height: 15)
                
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
            }
            
            Spacer()
                .frame(height: 28)

            Button {
                Task {
                    do {
                        try await authViewModel.signInUser(withEmail: email, password: password)
                    } catch {
                        retrySignIn = true
                        errorMessage = error.localizedDescription
                        print("DEBUG: Failed to sign in \(error.localizedDescription)")
                    }
                }
            } label: {
                Text("로그인")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 333,height: 64)
                    .background(Color(hex: 0x5762EA))
                    .cornerRadius(36)
            }
            
            Spacer()
                .frame(height: 92)

            Button {
                authViewModel.loginState = .notSigned
            } label: {
                Text("아직 회원이 아니신가요?")
                    .foregroundColor(Color(hex: 0x5762EA))
            }
            Spacer()
        }
        .alert("로그인 실패", isPresented: $retrySignIn) {
            Button {
                retrySignIn = false
            } label: {
                Text("다시 시도하기")
            }
        } message: {
            Text(errorMessage)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
