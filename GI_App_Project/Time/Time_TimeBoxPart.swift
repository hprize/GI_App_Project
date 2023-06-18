//
//  Time_TimeBoxPart.swift
//  Gi
//
//  Created by Daol on 2023/06/06.
//

import SwiftUI

struct Time_TimeBoxPart: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Time_Timebox()
            Time_TimeLinePart()


        }
    }
}

struct Time_TimeBoxPart_Previews: PreviewProvider {
    static var previews: some View {
        Time_TimeBoxPart()
    }
}
