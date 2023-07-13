//
//  Setting_Title.swift
//  Gi
//
//  Created by Daol on 2023/06/10.
//

import SwiftUI

struct Setting_Title: View {
    var body: some View {
        HStack {
            
            Spacer()
                .frame(width:100)
            Image("Mask Group 4")
                .clipShape(Circle())
                .frame(width: 48, height: 48)
                .padding(.leading, -90)
            
            
            VStack(alignment: .leading){
                
                Text("이준후")
                    .font(.system(size: 23))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(.bottom, 7)
                    .lineLimit(1)
                
                Spacer()
                    .frame(height: 5)
                
                Text("혜화랩")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .frame(width: 64, height: 25)
                    .background(Color.white)
                    .cornerRadius(14)
                    .shadow(radius: 1)
                
            }
            .padding(.leading, -15)
            .frame(height: 55, alignment: .top)
            
            Spacer()
                .frame(width: 89.3)
            HStack {
                Text("계정관리")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(Color(hex: 0x343434))
                
                Button {
                    
                } label: {
                    Image("arrow")
                }
            }
        }
        .frame(height: 95)
    }
}

struct Setting_Title_Previews: PreviewProvider {
    static var previews: some View {
        Setting_Title()
    }
}
