//
//  Time_Callender.swift
//  Gi
//
//  Created by Daol on 2023/07/02.
//


import SwiftUI


struct Time_Callender: View {
    @Binding var currentDate: Date
    @Binding var isCalenderTapped: Bool
    @Binding var currentMonth: Int
    
    let days: [String] =
    ["S","M","T","W","T","F","S" ]
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: -2) {
                
                Spacer()
                    .frame(height: 180)
                
                HStack {
                    HStack {
                        Image("GILogoColor")
                            .resizable()
                            .frame(width: 29, height: 29)
                            .padding(.trailing, 7)
                        Image("GITextColor")
                            .resizable()
                            .frame(width: 58, height: 18)
                    }
                    .padding()
                    Spacer()
                        .frame(width: 175)
                    
                    HStack {
                        NavigationLink {
                            SettingView()
                            
                        } label: {
                            Image("SettingColor")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 22, height: 23)
                                .padding(.trailing, 6)
                            
                        }
                        
                        Image("bellColor")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 20, height: 24)
                    }
                    .padding()
                }
                
                // 위에 뷰
                
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
                                    isCalenderTapped.toggle()
                                    
                                } label: {
                                    Image(systemName: isCalenderTapped == false ? "chevron.up" : "chevron.down")
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
                            
                            ForEach(extractDate()) { value in
                                
                                CardView(value: value)
                                    .onTapGesture {
                                        currentDate = value.date
                                    }
                                
                            }
                        }
                        .padding(.horizontal, 38)
                        
                    }
                    .padding(.top, 20)
                    
                }
                
                
                
                // 밑에 뷰
                ZStack {
                    
                    Rectangle()
                        .frame(width: 393, height: 500)
                        .foregroundColor(Color(hex: 0xFCFCFC))
                    
                    VStack(spacing: 35)  {
                        
                        HStack(spacing: 0) {
                            Rectangle().frame(width: 393, height: 1)
                                .foregroundColor(Color(hex: 0xB7B7B7))
                        }
                        
                        HStack {
                            Text("\(getMonthDay())")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        .padding(.leading,30)
                        
                        ZStack(alignment: .top) {
                            HStack {
                                Rectangle().frame(width: 1, height: 400)
                                    .foregroundColor(Color(hex: 0xB7B7B7))
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .offset(y: 5)
                            if let task = tasks.first(where: { task in return isSameDay(date1: task.taskDate, date2: currentDate)
                                
                            }) {
                                
                                ScrollView {
                                    ForEach(Array(task.task.enumerated()), id: \.0) { idx, task in
                                        
                                        
                                        HStack(alignment: .top) {
                                            Circle()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(idx % 2 == 0 ? Color(hex: 0xFFBF74) : Color(hex: 0x5762EA))
                                                .offset(y: 5)
                                            
                                            VStack(alignment: .leading, spacing: 6) {
                                                Text(task.title)
                                                    .font(.system(size: 17))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(Color(hex: 0x343434))
                                                
                                                Text("오후 2시 - 5시, 4층공간 모두 사용")
                                                    .font(.system(size: 13))
                                                    .fontWeight(.light)
                                                    .foregroundColor(Color(hex: 0x343434))
                                                
                                            }
                                            
                                            Spacer()
                                            
                                        }
                                        .frame(height: 80, alignment: .top)
                                        .padding(.leading, 20)
                                        .offset(x: -5)
                                        
                                    }
                                }
                            }
                            
                            
                            else {
                                
                                HStack(alignment: .top) {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor( Color(hex: 0xFFBF74))
                                        .offset(y: 5)
                                    
                                    VStack(alignment: .leading, spacing: 6) {
                                        
                                        
                                        Text("다른 일정이 존재하지 않습니다.")
                                            .font(.system(size: 17))
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(hex: 0xFFBF74))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                }
                                .frame(height: 80, alignment: .top)
                                .padding(.leading, 20)
                                .offset(x: -5)
                                
                            }
                        }
                        .frame(width: 400, height: 400)
                        .padding(.leading)
                    }
                    .onChange(of: currentMonth) { newValue in
                        currentDate = getCurrentMonth()
                        
                    }
                    
                }
                
            }
            .navigationBarItems(
                leading: HStack(spacing: 15) {
                    Image("GI_ImageLogo_Blue")
                        .resizable()
                        .frame(width: 29, height: 29)
                    
                    Image("GI_TextLogo_Blue")
                        .resizable()
                        .frame(width: 58, height: 18)
                }
                    .padding(.leading, 2),
                
                trailing: HStack(spacing: 7) {
                    NavigationLink(destination: SettingView()) {
                        Image("set")
                            .resizable()
                            .frame(width: 23, height: 23)
                    }
                    
                    NavigationLink(destination: SettingView()) {
                        Image("alram")
                            .resizable()
                            .frame(width: 22, height: 23)
                    }
                }
            )
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
    }


extension Date {
    
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}
