//
//  ContentView.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct TimeView: View {
    var body: some View {
        VStack {
            Time_info()
            Spacer()
                .frame(height: 20)
            
            Time_TimeBoxPart()
            
            Spacer()
                .frame(height: -20)
            
            Time_Callender()
            
            Spacer()
                .frame(height: 0)

        }
    }

}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
