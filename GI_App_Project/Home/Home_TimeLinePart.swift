//
//  Home_TimeLinePart.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/01.
//

import SwiftUI

struct Home_TimeLinePart: View {
    @State private var tabSelction = 1
    
    var body: some View {
        VStack(spacing: 0) {
            Home_TimeLinePart_selection(tabSelection: $tabSelction)
            TabView(selection: $tabSelction) {
                Home_TimeLinePart_One()
                    .tag(1)
                Home_TimeLinePart_Two()
                    .tag(2)
                Home_TimeLinePart_Three()
                    .tag(3)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 327)
            .ignoresSafeArea()
        }
    }
}

struct Home_TimeLinePart_Previews: PreviewProvider {
    static var previews: some View {
        Home_TimeLinePart()
    }
}
