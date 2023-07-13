//
//  ContentView.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct TimeView: View {
    @State private var isSettingViewActive = false
    @State private var isCalenderTapped = false
    @State var currentMonth: Int = 0
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                    .frame(height: 80)
           
                VStack{
                    Time_sellectView()
                    
                    Time_ShortCallender(currentMonth: $currentMonth, currentDate: $currentDate, isCalenderTapped: $isCalenderTapped)
                        
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
            
            .fullScreenCover(isPresented: $isCalenderTapped) {
                Time_Callender(currentDate: $currentDate, isCalenderTapped: $isCalenderTapped, currentMonth: $currentMonth)
            }
            
        }
    }
}


struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
