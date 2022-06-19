//
//  SwiftUIView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI

struct FriendsCell: View {
    var body: some View {
        
       
ScrollView {
    
        VStack {
            
            Text("Друзья")
                .font(.system(.headline, design: .serif))
                
            
            
        
        HStack(alignment: .center, spacing: 0) {
            
            Image("friendLogo")
                .resizable()
                .frame(width: 80, height: 80)
                .modifier(CircleShadow(shadowColor: .gray, shadowRadius: 9))
                
            
            
            Text("Spider Man")
                .padding(.trailing, 150)
                .padding(.leading, 25)
                .controlSize(.large)
                
        
            
                } // HStack
                    .padding(.bottom, 650)
        
            
            
            
            } // VStack
                    .padding()
        } // ScrollView
    } // body
} // FriendCell

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsCell()
    }
}


extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}



