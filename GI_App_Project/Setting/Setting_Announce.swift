//
//  Setting_Announce.swift
//  Gi
//
//  Created by Daol on 2023/07/07.
//

import SwiftUI

struct Setting_Announce: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("안녕하세요, 지아이 입니다!")
            Text("2023.07.07")
            
            Divider()

        }
    }
}

struct Setting_Announce_Previews: PreviewProvider {
    static var previews: some View {
        Setting_Announce()
    }
}
