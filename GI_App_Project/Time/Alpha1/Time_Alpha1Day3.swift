//
//  Time_Alpha1Day3.swift
//  GI_App_Project
//
//  Created by Daol on 2023/07/10.
//

import SwiftUI

struct Time_Alpha1Day3: View {
    @EnvironmentObject var timeDataFetcher: TimeDataFetcher

    @Binding var currentDate: Date

    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 288, height: 317)
                .cornerRadius(14)
                .foregroundColor(Color.white)
                .shadow(radius: 3)
            
            VStack {
                Spacer()
                    .frame(height: 16.5)
                
                VStack (alignment: .center) {
                    Text("\(extraDate()[0]).\(extraDate()[1])")                        .font(.system(size: 13))
                    
                    Text("\(getPreviousDayOfWeek(currentDate: currentDate))")                        .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                Spacer()
                    .frame(height: 9.5)
                
                VStack(alignment: .leading, spacing: 10) {
                    if let timeschuele = timeDataFetcher.timeData {
                        
                        HStack {
                            Text("\(timeschuele.results[3].properties.랩.richText[0].plainText) 수업" )
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            
                            Text("9:30 - 12:30")
                                .font(.system(size: 15))
                                .fontWeight(.regular)
                                .padding(.leading, 55)
        
                        }
                    }
              
                        if let timeschuele = timeDataFetcher.timeData {
                            Text("\(timeschuele.results[21].properties.dayTime.title [0].plainText)")
                                .font(.system(size: 18))
                                .fontWeight(.regular)


                        }
                }
                .foregroundColor(Color.white)
                .frame(width: 289, height: 103)
                .background(Color(hex: 0xFFBF74))
                .cornerRadius(6, corners: [.topLeft, .topRight])
               
                
                HStack {
                    Text("점심시간")
                        .font(.system(size: 16))
                    
                    Spacer()
                        .frame(width: 80)

                    Text("12:30 - 2:00")
                        .font(.system(size: 15))
                        .padding(.leading,15)
                 
                }
                .frame(width: 289, height: 27)

                
        
                
                
                   VStack(alignment: .leading, spacing: 10) {
                       if let timeschuele = timeDataFetcher.timeData {
                           
                       HStack {
                          
                               Text("\(timeschuele.results[0].properties.랩.richText[0].plainText)")
                                   .font(.system(size: 20))
                                   .fontWeight(.semibold)
                               
                               Text("2:00 - 5:00")
                               .font(.system(size: 15))
                               .fontWeight(.regular)
                               .padding(.leading, 40)
                               
                           }
                       }
        
                       if let timeschuele = timeDataFetcher.timeData {
                           Text("\(timeschuele.results[18].properties.dayTime.title [0].plainText)")
                               .fontWeight(.regular)
                               .foregroundColor(Color.white)
                  
                       }
                   }
                   .foregroundColor(Color.white)
                   .frame(width: 289, height: 104)
                   .background(Color(hex: 0x5762EA))
                   .cornerRadius(14, corners: [.bottomLeft, .bottomRight ])
               }

               
            
        }
        .task {
            do {
                try await timeDataFetcher.sendRequest()
            } catch {
                print(String(describing: error))
            }
        }
        
        .offset(x:15)
        
    }
    
    func getPreviousDayOfWeek(currentDate: Date) -> String {
        let calendar = Calendar.current
        let previousDate = calendar.date(byAdding: .day, value: +3, to: currentDate)!
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        let dayOfWeek = formatter.string(from: previousDate)
        return dayOfWeek
    }
    
    func extraDate() -> [String] {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd"
        
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: "/")
        
    }
}

struct Time_Alpha1Day3_Previews: PreviewProvider {
    static var previews: some View {
        Time_Alpha1Day3(currentDate: .constant(Date())).environmentObject(TimeDataFetcher())
    }
}
