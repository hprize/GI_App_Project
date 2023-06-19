//
//  SignUpView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import SwiftUI
import PhotosUI

struct SignUpView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var selectedItem: PhotosPickerItem? = nil
    @State var selectedImageData: Data? = nil
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var retrySignUp = false
    @State var errorMessage = ""
    @State var isSelected: Bool = false

    
    var body: some View {
        VStack {
            PhotosPicker(
                    selection: $selectedItem,
                    matching: .images,
                    photoLibrary: .shared()) {
                        if isSelected == false {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color.gray)
                                    .frame(width: 75, height: 75)
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                            }
                            
                        }
                        else {
                            if let selectedImageData,
                               let uiImage = UIImage(data: selectedImageData) {
                                Image(uiImage: uiImage)
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .frame(width: 75, height: 75)
                                    .background {
                                        Circle().fill(
                                            LinearGradient(
                                                colors: [.yellow, .orange],
                                                startPoint: .top,
                                                endPoint: .bottom
                                            )
                                        )
                                    }

                            }
                        }
                    }
                    .onChange(of: selectedItem, perform: { newValue in
                        Task {
                            if let newValue {
                                do {
                                    if let data = try? await newValue.loadTransferable(type: Data.self) {
                                                selectedImageData = data
                                                isSelected = true
                                            }
                                } catch {
                                    print(error.localizedDescription)
                                }
                            }
                        }
                    })
            
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
                        guard let selectedItem else {return}
                        try await authViewModel.registerUser(item: selectedItem, withEmail: email, password: password, fullName: fullName)
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
