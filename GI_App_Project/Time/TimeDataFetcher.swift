//
//  TimeDataFetcher.swift
//  GI_App_Project
//
//  Created by Daol on 2023/07/10.
//

import Foundation
import SwiftUI

class TimeDataFetcher: ObservableObject {
    @Published var timeData: TimeSchedule?

    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    @MainActor
    func sendRequest() async throws {
        let url = URL(string: "https://api.notion.com/v1/databases/40022ac0e7b840b7bba334b2887ff16c/query")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer secret_TMTrKKzbdqLrMmSP2ttjnCKFyPaiYpGpuBm8W0I5k9i", forHTTPHeaderField: "Authorization")
        request.setValue("2022-06-28", forHTTPHeaderField: "Notion-Version")
        
        
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        self.timeData = try JSONDecoder().decode(TimeSchedule.self, from: data)
        

    }
}
