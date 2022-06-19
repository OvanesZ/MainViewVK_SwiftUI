//
//  IconImageViewBuilder.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI


struct IconImage: View {
    
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    
    var body: some View {
        content
            .resizable()
            .frame(width: 80, height: 80)
            .modifier(CircleShadow(shadowColor: .white, shadowRadius: 9))
    }
}
