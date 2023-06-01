//
//  LoginState.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import Foundation

enum LoginState {
    case loggedIn
    case loggedOut
    case notSigned

    var navigationTitle: String {
        switch self {
        case .loggedIn:
            return "로그아웃"
        case .loggedOut:
            return "로그인"
        case .notSigned:
            return "회원가입"
        }
    }
}
