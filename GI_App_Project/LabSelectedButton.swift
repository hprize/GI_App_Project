//
//  LabSelectedButton.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/19.
//

import SwiftUI

struct LabSelectedButton: View {
    @Binding var isLabSelected : Bool
    @State var color : Color
    @State var textColor : Color
    @State var text : String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 61, height: 51)
                .foregroundColor(isLabSelected ? color: Color(hex: 0xEDEDEF))
            Text(text)
                .foregroundColor(isLabSelected ? textColor: Color(hex: 0x707070))
                .font(.system(size: 16))
                .fontWeight(.light)
        }
    }
}

struct LabSelectedButton_Previews: PreviewProvider {
    static var previews: some View {
        LabSelectedButton(isLabSelected: .constant(false), color: .blue, textColor: .black, text: "Option")
    }
}
