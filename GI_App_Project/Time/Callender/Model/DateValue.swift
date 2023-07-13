//
//  DateValue.swift
//  GI_App_Project
//
//  Created by Daol on 2023/07/10.
//

import SwiftUI

struct DateValue: Identifiable {
    let id = UUID()
    let day: Int
    let date: Date
    
    init(day: Int, date: Date) {
        self.day = day
        self.date = Calendar.current.startOfDay(for: date)
    }
}
