//
//  CircleShadow.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI



struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay { Circle().stroke(.red, lineWidth: 2) }
            .background(Circle()
                            .fill(Color.black)
                            .shadow(color: shadowColor, radius: shadowRadius))
    }
}
