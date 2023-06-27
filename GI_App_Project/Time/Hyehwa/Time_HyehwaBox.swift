//
//  Time_TimeBox.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//
import SwiftUI

struct Time_HyehwaBox: View {
    var body: some View {
        TabView {
  
            Time_HyehwaDay()
                .frame(width: 288, height: 317)
                .offset(y:-10)
            
            
            Time_HyehwaDay1()
                .frame(width: 288, height: 317)
            
            Time_HyehwaDay2()
                .frame(width: 288, height: 317)
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 433)
        .tabViewStyle(.page(indexDisplayMode: .always))

    }
}
struct Time_HyehwaBox_Previews: PreviewProvider {
    static var previews: some View {
        Time_HyehwaBox()
    }
}
