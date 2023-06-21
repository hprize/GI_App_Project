//
//  SignUpView.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import SwiftUI
import PhotosUI

struct SignUpView: View {
    @State private var text: String = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    @State var selectedItem: PhotosPickerItem? = nil
    @State var selectedImageData: Data? = nil
    @State var nickName: String = ""
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var retrySignUp = false
    @State var errorMessage = ""
    @State var isImageSelected: Bool = false
    
    @State private var isLabSelected = false
    @State private var isLabSelected2 = false
    @State private var isLabSelected3 = false
    @State private var showAlert = false
    @State private var alertText = ""
    
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack(spacing: 0) {
                PhotosPicker(
                    selection: $selectedItem,
                    matching: .images,
                    photoLibrary: .shared()) {
                        if isImageSelected == false {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color(hex: 0xEDEDEF))
                                    .frame(width: 75, height: 75)
                                Image("PlusItem")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                            }
                            
                        } else {
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
                                        isImageSelected = true
                                    }
                                } catch {
                                    print(error.localizedDescription)
                                }
                            }
                        }
                    })
                Spacer()
                TextField(
                    "닉네임",
                    text: $nickName
                )
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .background(
                    Capsule()
                        .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
                )
                .frame(height: 51)
                .textInputAutocapitalization(.never)
            
            }
            .frame(width: 333)
            
            
            HStack(spacing: 0) {
                TextField(
                    "이름",
                    text: $fullName
                )
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
                .background(
                    Capsule()
                        .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
                )
                .frame(height: 51)
                .textInputAutocapitalization(.never)
                
                Spacer()
                
                VStack (spacing: 0){
                    HStack (spacing: 0){
                        LabSelectedButton (
                            isLabSelected: $isLabSelected,
                            color: Color(hex: 0x5762EA),
                            textColor: Color(hex: 0xFFFFFFF),
                            text: "혜화랩")
                        .onTapGesture {
                            isLabSelected.toggle()
                            
                            if isLabSelected {
                                isLabSelected2 = false
                                isLabSelected3 = false
                            }
                        }
                        LabSelectedButton (
                            isLabSelected: $isLabSelected2,
                            color: Color(hex: 0x5762EA),
                            textColor: Color(hex: 0xFFFFFFF),
                            text: "M 랩")
                        .onTapGesture {
                            isLabSelected2.toggle()
                            
                            if isLabSelected2 {
                                isLabSelected = false
                                isLabSelected3 = false
                            }
                        }
                        LabSelectedButton (
                            isLabSelected: $isLabSelected3,
                            color: Color(hex: 0x5762EA),
                            textColor: Color(hex: 0xFFFFFFF),
                            text: "C 랩")
                        .onTapGesture {
                            isLabSelected3.toggle()
                            
                            if isLabSelected3 {
                                isLabSelected = false
                                isLabSelected2 = false
                            }
                        }
                    }
                }
            }
            .frame(width: 340, alignment:.leading)
            
            
            TextField(
                "이메일",
                text: $email
            )
            .textFieldStyle(PlainTextFieldStyle())
            .padding()
            .background(
                Capsule()
                    .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
            )
            .frame(height: 51)
            .textInputAutocapitalization(.never)
            
            SecureField(
                "비밀번호",
                text: $password
            )
            .textFieldStyle(PlainTextFieldStyle())
            .padding()
            .background(
                Capsule()
                    .strokeBorder(Color(hex: 0xD9D9D9), lineWidth: 1)
            )
            .frame(height: 51)
            .textInputAutocapitalization(.never)
            
            
            Button {
                authViewModel.loginState = .loggedOut
            } label: {
                Text("이미 회원이신가요?")
                    .foregroundColor(Color(hex: 0x5762EA))
                
            }
            
            Button {
                Task {
                    do {
                        guard let selectedItem else {return}
                        try await authViewModel.registerUser(item: selectedItem, nickName: nickName, withEmail: email, password: password, fullName: fullName)
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
        }
        .frame(width: 333)
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
