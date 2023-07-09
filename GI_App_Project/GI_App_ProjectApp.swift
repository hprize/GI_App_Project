//
//  GI_App_ProjectApp.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/12.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct GI_App_ProjectApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var mealDataModel = MealDataModel()

    
    
    var body: some Scene {
        WindowGroup {

            MainView()
                .task {
                    mealDataModel.getData()
                }
                .environmentObject(authViewModel)
                .environmentObject(mealDataModel)
        }
    }
}
