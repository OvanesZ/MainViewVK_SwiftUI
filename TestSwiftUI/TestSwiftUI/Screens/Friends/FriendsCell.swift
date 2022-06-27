//
//  SwiftUIView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI

struct FriendsCell: View {
  
    let friend: Friend
    
    var body: some View {
        
        
        ZStack {
            VStack {
                HStack(alignment: .center, spacing: 0) {
                            IconImage {
                                Image(friend.imageName)
                            }
                            
                            NameText {
                                Text("\(friend.name)")
                            }
                } // HStack
            } // VStack
        } // ZStack
    } // body
} // FriendsCell




