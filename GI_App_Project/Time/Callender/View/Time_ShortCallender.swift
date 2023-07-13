//
//  Time_ShortCallender.swift
//  GI_App_Project
//
//  Created by Daol on 2023/07/10.
//

import SwiftUI

struct Time_ShortCallender: View {
    @Binding var currentMonth: Int
    @Binding var currentDate: Date
    @Binding var isCalenderTapped: Bool
    
    let days: [String] =
    ["S","M","T","W","T","F","S" ]
    
    var body: some View {
        VStack {
//
        
        ZStack {
            
            Rectangle()
                .frame(width: 393, height: 330)
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .foregroundColor(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
            
            VStack(spacing: 20) {
                HStack(spacing: 70) {
                    Button {
                        currentMonth -= 1
                    } label: {
                        Image(systemName: "arrowtriangle.left.circle")
                            .foregroundColor(Color(hex: 0x5762EA))                        .font(.system(size:19))
                            .fontWeight(.regular)
                    }
                    
                    
                    HStack {
                        Text("\(extraDate()[0]).\(extraDate()[1])")
                            .font(.system(size:19))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: 0x5762EA))
                        
                        Button {
                            isCalenderTapped = true
                        } label: {
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.gray)
                        }
                        
                    }
                    Button {
                        currentMonth += 1
                        
                    } label: {
                        Image(systemName: "arrowtriangle.forward.circle")
                            .foregroundColor(Color(hex: 0x5762EA))                  .font(.system(size:19))
                            .fontWeight(.regular)
                    }
                }
                .padding(.bottom,-3)
                
                
                HStack(spacing: 0) {
                    ForEach(Array(zip(days.indices, days)), id: \.0) { index, day in
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(hex: 0xF5F5F5))
                            
                            if index == 0 {
                                Text(day)
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                            } else if index == 6 {
                                Text(day)
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hex: 0x5762EA))
                            } else {
                                Text(day)
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                            }
                            
                        }
                        .padding(.horizontal, 10)
                        
                    }
                }
                
                let colums = Array(repeating: GridItem(.flexible()), count: 7)
                
                LazyVGrid(columns: colums, spacing: 0) {
                    
                    ForEach(extractThreeWeeks(currentDate: currentDate)) { value in
                        
                        CardView(value: value)
                            .onTapGesture {
                                currentDate = value.date
                            }
                        
                    }
                }
                .padding(.horizontal, 38)
                
            }
            }
            .padding(.top, 20)
            .onChange(of: currentMonth) { newValue in
                currentDate = getCurrentMonth()
            }
            
        }
        
    }
    

    @ViewBuilder
    func CardView(value: DateValue) -> some View {
        
        VStack {
            
            if value.day != -1 {
                if let task = tasks.first(where: { task in
                    return isSameDay(date1: task.taskDate, date2: value.date)
                    
                }){
                    Text("\(value.day)")
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(isSameDay(date1: task.taskDate, date2: currentDate) ? .black : .primary)
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(hex: 0xFADCB8))
                                .opacity(isSameDay(date1: value.date, date2: currentDate) ? 1 : 0)
                        )
                    
                    
                    Spacer()
                        .frame(height: 1.5)
                    
                    
                    Circle()
                        .foregroundColor(isSameDay(date1: task.taskDate, date2: currentDate) ?  Color(hex: 0x5762EA): Color(hex: 0x5762EA))
                    
                        .frame(width: 5, height:5)
                    
                }
                else {
                    Text("\(value.day)")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(isSameDay(date1: value.date, date2: currentDate) ? .black : .primary)
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(hex: 0xFADCB8))
                                .opacity(isSameDay(date1: value.date, date2: currentDate) ? 1 : 0))
                }
            }
            
        }
        .frame(height: 37, alignment: .top)
        
    }
    
    
    
    func isSameDay(date1: Date, date2: Date) -> Bool {
        let calendar = Calendar.current
        
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
    
    
    func extraDate() -> [String] {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY MM"
        
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: " ")
    }
    
    func getMonthDay() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d - EEEE"
        
        let date = formatter.string(from: currentDate)
        
        return date
    }
    
    func getCurrentMonth() -> Date {
        
        let calendar = Calendar.current
        
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return Date()
        }
        
        return currentMonth
        
    }
    
    func extractDate() -> [DateValue] {
        
        let calendar = Calendar.current
        
        let currentMonth = getCurrentMonth()
        
        var days = currentMonth.getAllDates().compactMap { date -> DateValue in
            
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date)
            
        }
        
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        
        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date())  , at: 0)
        }
        
        return days
    }
    
    
    func extractThreeWeeks(currentDate: Date) -> [DateValue] {
        
        let calendar = Calendar.current
        let currentMonth = getCurrentMonth()
        let currentWeek = currentDate.getCurrentWeek()
        
        var days = currentMonth.getAllDates().filter { abs($0.getCurrentWeek() - currentWeek) < 2 }.compactMap { date -> DateValue in
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date)
            
        }
        
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        
        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date())  , at: 0)
        }
        
        
        return days
    }
}
    

struct Time_ShortCallender_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}

extension Date {
    
    func getAllDate() -> [Date] {
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
    
    func getCurrentWeek() -> Int {
        let calendar = Calendar.current
        let week = calendar.component(.weekOfYear, from: self)
        return week
    }
}
