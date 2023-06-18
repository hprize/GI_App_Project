//
//  Time_Callender.swift
//  Gi
//
//  Created by Daol on 2023/06/08.
//

import SwiftUI

struct Time_Callender: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 393, height: 288)
                .cornerRadius(26, corners: [.topLeft, .topRight])
                .foregroundColor(Color.white)
                .shadow(radius: 5)
            
            
            VStack {
                
                HStack {
                    Text("2023.06")
                        .font(.system(size: 19))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: 0x5762EA))
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.down")
                            .tint(Color.gray)
                    }
                }
                
                Spacer()
                    .frame(height: 16.5)
                Time_number()
                Spacer()
                    .frame(height: 30)
            }
        }
        
    }
}

struct Time_Callender_Previews: PreviewProvider {
    static var previews: some View {
        Time_Callender()
    }
}
