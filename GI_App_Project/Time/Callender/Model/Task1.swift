//
//  Task.swift
//  GI_App_Project
//
//  Created by Daol on 2023/07/10.
//

import SwiftUI

struct Task1: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}


struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task1]
    var taskDate: Date
}

func getSampleData(offset: Int) -> Date {
    let calender = Calendar.current
    
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    
    TaskMetaData(task: [
        
        Task1(title: "Talk to iJustine"),
        Task1(title: "iphone 13 Great Design Change"),
        Task1(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: 1)),
    
    TaskMetaData(task: [
        Task1(title: "Talk to Jenna Ezarik")
    ], taskDate: getSampleData(offset: -3)),
    
    TaskMetaData(task: [
        Task1(title: "Meeting with Tim Cook")
    ], taskDate: getSampleData(offset: -8)),
    TaskMetaData(task: [
        
        Task1(title: "Next Version of SwiftUI")
    ], taskDate: getSampleData(offset: 10)),
    TaskMetaData(task: [
        
        Task1(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: -22)),
    TaskMetaData(task: [
        
        Task1(title: "iphone 13 Great Design Change")
    ], taskDate: getSampleData(offset: 15)),
    TaskMetaData(task: [
        
        Task1(title: "Kavsoft App Updates....")
    ], taskDate: getSampleData(offset: -20)),
    TaskMetaData(task: [
        
        Task1(title: "Kavsoft App Updates....")
    ], taskDate: getSampleData(offset: -26)),
    TaskMetaData(task: [
        
        Task1(title: "학생총회")
    ], taskDate: getSampleData(offset: -27)),
    TaskMetaData(task: [
        
        Task1(title: "학생총회"),
        Task1(title: "문제정의 심사 피드백 재심사"),
       
        Task1(title: "총회")
    ], taskDate: getSampleData(offset: -0)),
    TaskMetaData(task: [
        
        Task1(title: "점심약속"),
        Task1(title: "iphone 13 Great Design Change"),
        Task1(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleData(offset: -4)),
    
]
