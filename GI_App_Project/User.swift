//
//  User.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/31.
//

import Foundation

struct User: Codable {
    let profileImageURL: String
    let fullName: String
    let email: String
    let uid: String
}

extension User {
    static let sample: User = User(
        profileImageURL: "", fullName: "", email: "", uid: "")
}
