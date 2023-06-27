//
//  ContentView.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct TimeView: View {
    
    @State private var isSettingViewActive = false

    var body: some View {
        
        NavigationView {
        
            VStack {
                Spacer()
                    .frame(height: 120)
                Time_info()
                    
                Spacer()
                    .frame(height: 20)
                
                Time_sellectView()
                
                Spacer()
                    .frame(height: -20)
                
                Time_Callender()
                    .offset(y:-20)
                
                Spacer()
                    .frame(height: 80)
                
            }

        }

    }

}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
