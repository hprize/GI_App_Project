//
//  MealDataFetcher.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/24.
//

import Foundation
import SwiftUI

class MealDataFetcher: ObservableObject {
    @Published var menuData: Welcome = Welcome.defaultWelcome
    
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    func sendRequest() async throws {
        let url = URL(string: "https://api.notion.com/v1/databases/26f63871c5e6492a89b3de848597d0a4/query")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer secret_AWxrh33rlPVEhhTc0x3liREnfIvsMuuZjthu6BqgYgS", forHTTPHeaderField: "Authorization")
        request.setValue("2022-06-28", forHTTPHeaderField: "Notion-Version")
        let (data, _) = try await URLSession.shared.data(for: request)
        Task { @MainActor in
            menuData = try JSONDecoder().decode(Welcome.self, from: data)
        }
    }
}
