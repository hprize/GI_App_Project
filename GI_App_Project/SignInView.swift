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
        VStack(spacing: 0) {
            Spacer()
            VStack (spacing: 0){
                Image("GI_ImageLogo_Blue")
                    .resizable()
                    .frame(width: 45,height: 45.08)
                Spacer()
                    .frame(height: 14)
                Image("GI_TextLogo_Blue")
                    .resizable()
                    .frame(width: 90,height: 28.28)
            }
            Spacer()
                .frame(height: 78)
            VStack (spacing: 0){
                TextField(
                    "이메일을 입력해주세요.",
                    text: $email
                )
                .font(.system(size: 16))
                .fontWeight(.light)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .background(
                    Capsule()
                        .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
                )
                .frame(height: 51)
                .textInputAutocapitalization(.never)
                
                Spacer()
                    .frame(maxHeight: 15)
                
                SecureField(
                    "비밀번호를 입력해주세요.",
                    text: $password
                )
                .font(.system(size: 16))
                .fontWeight(.light)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .background(
                    Capsule()
                        .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
                )
                .frame(height: 51)
                .textInputAutocapitalization(.never)
            }
            
            Spacer()
                .frame(maxHeight: 28)

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
                    .fontWeight(.medium)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 333,height: 64)
                    .background(Color(hex: 0x5762EA))
                    .cornerRadius(36)
            }
            
            Spacer()
                .frame(maxHeight: 92)

            Button {
                authViewModel.loginState = .notSigned
            } label: {
                Text("아직 회원이 아니신가요?")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(Color(hex: 0x5762EA))
                    .underline()
            }
            Spacer()
        }
        .frame(width: 333)
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
