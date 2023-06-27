//
//  Time_Alpha1Box .swift
//  Gi
//
//  Created by Daol on 2023/06/23.
//

import SwiftUI


struct Time_Alpha1Box: View {
    var body: some View {
        TabView {
            Time_Alpha1Day()
                .frame(width: 288, height: 317)
                .offset(y:-10)
            
            
            Time_Alpha1Day1()
                .frame(width: 288, height: 317)
            
            Time_Alpha1Day2()
                .frame(width: 288, height: 317)
            
        }
        .background(Color(hex: 0xE6E6E6))
        .frame(width: 393, height: 433)
        .tabViewStyle(.page(indexDisplayMode: .always))

    }
}
struct Time_Alpha1Box_Previews: PreviewProvider {
    static var previews: some View {
        Time_Alpha1Box()
    }
}
