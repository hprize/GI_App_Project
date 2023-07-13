//
//  Time_TimeBox.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//
import SwiftUI

struct Time_HyehwaBox: View {
    @EnvironmentObject var timeDataFetcher: TimeDataFetcher

    

    var body: some View {
        TabView {
  
            Time_HyehwaDay(currentDate: .constant(Date())) // welcome 전달
                .frame(width: 288, height: 317)
      
            Time_HyehwaDay1(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay2(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay3(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay4(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay5(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay6(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 433)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .environmentObject(timeDataFetcher)
        
        
        .task {
            do {
                try await timeDataFetcher.sendRequest()
            } catch {
                print(String(describing: error))
            }
        }

    }
    
}
struct Time_HyehwaBox_Previews: PreviewProvider {
    static var previews: some View {
        Time_HyehwaBox().environmentObject(TimeDataFetcher())
    }
}
