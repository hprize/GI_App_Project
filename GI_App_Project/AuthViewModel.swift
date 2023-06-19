//
//  AuthViewModel.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/31.
//

import Foundation
import PhotosUI

import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
import _PhotosUI_SwiftUI


@MainActor
final class AuthViewModel: ObservableObject {
    @Published var loginState: LoginState
    
    // 앱의 모델.
    @Published var user: User?
    
    private var profileImageURL: String?
    
    // 유저의 세션 정보가 담겨져 있음. 앱을 껐다가 다시 들어가도 유지
    
    private var uid: String {
        Auth.auth().currentUser?.uid ?? ""
    }
    
    init() {
        loginState = Auth.auth().currentUser != nil ? .loggedIn : .loggedOut
    }
    
    func registerUser(item: PhotosPickerItem, withEmail email: String, password: String, fullName: String) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        let profileImageURL = try await saveProfileImage(item: item)
        let user = User(profileImageURL: profileImageURL, fullName: fullName, email: email, uid: result.user.uid)
        try await storeUser(with: user)
        loginState = .loggedIn
    }
    
    func signInUser(withEmail email: String, password: String) async throws {
        try await Auth.auth().signIn(withEmail: email, password: password)
        loginState = .loggedIn
    }
    
    func signOutUser() throws {
        try Auth.auth().signOut()
        self.user = nil
        loginState = .loggedOut
    }
    
    func fetchUser() async throws {
        guard let user = try? await Firestore.firestore().collection("users").document(uid).getDocument(as: User.self) else {
            return
        }
        self.user = user
    }
    
    func saveProfileImage(item: PhotosPickerItem) async throws -> String{
        guard let data = try await item.loadTransferable(type: Data.self) else { return ""}
        let (path, _) = try await StorageManager.shared.saveImage(data: data)
        profileImageURL = path
        return path
    }
}

extension AuthViewModel {
    // MARK: - Helper
    private func storeUser(with user: User) async throws {
        let encodedUser = try Firestore.Encoder().encode(user)
        try await Firestore.firestore().collection("users").document(uid).setData(encodedUser)
    }
}

