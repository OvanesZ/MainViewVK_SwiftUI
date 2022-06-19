//
//  NameTextViewBuilder.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI


struct NameText: View {
    
    var content: Text
    
    init(@ViewBuilder content: () -> Text) {
        self.content = content()
    }
    
    var body: some View {
        content
//            .padding(.trailing, 5)
            .padding(.leading, 25)
            .controlSize(.large)
            .foregroundColor(.white)
            .lineLimit(1)
    }
}
