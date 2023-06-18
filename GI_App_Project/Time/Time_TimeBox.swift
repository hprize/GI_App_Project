//
//  Time_TimeBox.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//
import SwiftUI

struct Time_Timebox: View {
    var body: some View {
        TabView {
  
            Time_TimeDay()
                .frame(width: 288, height: 317)
            
            
            Time_TimeDay1()
                .frame(width: 288, height: 317)
            
            Time_TimeDay2()
                .frame(width: 288, height: 317)
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 417)
        .tabViewStyle(.page)
        
    }
}
struct Time_Timebox_Previews: PreviewProvider {
    static var previews: some View {
        Time_Timebox()
    }
}
