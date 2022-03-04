//
//  DividerLine.swift
//  Moonshot
//
//  Created by Yosef Ben Zaken on 04/03/2022.
//

import SwiftUI

struct DividerLine: View {
    var body: some View {
        Rectangle()
            .frame(height:2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}


struct DividerLine_Previews: PreviewProvider {
    static var previews: some View {
        DividerLine()
    }
}
