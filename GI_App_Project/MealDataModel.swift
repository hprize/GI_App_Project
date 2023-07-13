//
//  MealDataModel.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/07/03.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class MealDataModel: ObservableObject {
    
    @Published var list = [MealData]()
    
    @Published var Day: String
    @Published var Time: String
    
    func getCurrentDay() -> String {
        let now = Date()
        let formatter = DateFormatter() //객체 생성
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.dateFormat = "E" //데이터 포멧 설정
        let day = formatter.string(from: now) //문자열로 바꾸기
        return day
    }
    
    func getCurrentTime() -> String {
        let now = Date()
        let formatter = DateFormatter() //객체 생성
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.dateFormat = "a" //데이터 포멧 설정
        let time = formatter.string(from: now) //문자열로 바꾸기
        return time
    }
    
    init() {
        self.Day = ""
        self.Time = ""
        Day = getCurrentDay()
        Time = getCurrentTime()
    }
    
    
    func getData() {
        
        let db = Firestore.firestore()
        
        db.collection("mealData").getDocuments { snapshot, error in
            
            if error == nil {
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            
                            return MealData(id: d.documentID,
                                            Date: d["Date"] as? Array ?? [],
                                            lunchTime: d["lunchTime"] as? String ?? "",
                                            lunchMenu1: d["lunchMenu1"] as? String ?? "",
                                            lunchMenu2: d["lunchMenu2"] as? String ?? "",
                                            lunchMenu3: d["lunchMenu3"] as? String ?? "",
                                            lunchMenu4: d["lunchMenu4"] as? String ?? "",
                                            lunchMenu5: d["lunchMenu5"] as? String ?? "",
                                            lunchMenu6: d["lunchMenu6"] as? String ?? "",
                                            dinnerTime: d["dinnerTime"] as? String ?? "",
                                            dinnerMenu1: d["dinnerMenu1"] as? String ?? "",
                                            dinnerMenu2: d["dinnerMenu2"] as? String ?? "",
                                            dinnerMenu3: d["dinnerMenu3"] as? String ?? "",
                                            dinnerMenu4: d["dinnerMenu4"] as? String ?? "",
                                            dinnerMenu5: d["dinnerMenu5"] as? String ?? "",
                                            dinnerMenu6: d["dinnerMenu6"] as? String ?? "")
                        }
                    }
                    
                    
                }
            }
            else {
                // Handle the error
            }
        }
    }
    
    func checkCurrentDay() -> Int {
        var num: Int
        switch (self.Day) {
        case ("월") : num = 0
        case ("화") : num = 1
        case ("수") : num = 2
        case ("목") : num = 3
        case ("금") : num = 4
        case ("토") : num = 4
        case ("일") : num = 4
        default:
            num = 6
        }
        return num
    }
    
    func checkCurrentTime() -> Bool {
        var when: Bool
        switch (self.Time) {
        case ("오전") : when = true
        case ("오후") : when = false
        default:
            when = true
        }
        return when
    }

    
}
