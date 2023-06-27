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
                .frame(width: 393, height: 306)

                .cornerRadius(20, corners: [.topLeft, .topRight])
                .foregroundColor(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)

            
            VStack {
                Spacer()
                    .frame(height: 30)
                
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
                    .frame(height: 14.5)
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
