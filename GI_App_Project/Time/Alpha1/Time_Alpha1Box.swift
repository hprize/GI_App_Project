//
//  Time_Alpha1Box .swift
//  Gi
//
//  Created by Daol on 2023/06/23.
//

import SwiftUI


struct Time_Alpha1Box: View {
    @EnvironmentObject var timeDataFetcher: TimeDataFetcher

    var body: some View {
        TabView {
            Time_Alpha1Day(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
             
            Time_Alpha1Day1(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day2(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day3(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day4(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day5(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day6(currentDate: .constant(Date()))
                .frame(width: 288, height: 317)
            
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 433)
        .tabViewStyle(.page(indexDisplayMode: .always))

    }
}
struct Time_Alpha1Box_Previews: PreviewProvider {
    static var previews: some View {
        Time_Alpha1Box().environmentObject(TimeDataFetcher())
    }
}
