//
//  Time_Alpha2Box .swift
//  Gi
//
//  Created by Daol on 2023/06/23.
//

import SwiftUI


struct Time_Alpha2Box: View {
    var body: some View {
        TabView {
            Time_Alpha2Day()
                .frame(width: 288, height: 317)
                .offset(y:-10)
            
            
            Time_Alpha2Day1()
                .frame(width: 288, height: 317)
            
            Time_Alpha2Day2()
                .frame(width: 288, height: 317)
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 433)
        .tabViewStyle(.page(indexDisplayMode: .always))

    }
}
struct Time_Alpha2Box_Previews: PreviewProvider {
    static var previews: some View {
        Time_Alpha2Box()
    }
}
