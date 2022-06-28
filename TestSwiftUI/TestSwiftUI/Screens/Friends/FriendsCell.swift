//
//  SwiftUIView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI
import Kingfisher

struct FriendsCell: View {
  
    let friend: Friend
    
    init(friend: Friend) {
        self.friend = friend
    }
    
    var body: some View {
        
        
        ZStack {
            VStack {
                HStack(alignment: .center, spacing: 0) {
//                            IconImage {
//                                Image(friend.imageName)
//                            }
                    
              //      KFImage(self.friend.imageName)
                    
                    
                        KFImage(URL(string: friend.friendImageUrlText)!)
                        .padding()
                        .frame(width: 80, height: 80)
                        .modifier(CircleShadow(shadowColor: .black, shadowRadius: 9))
                    
                    
                            
                            NameText {
                                Text("\(friend.firstName) \(friend.lastName)")
                            }
                } // HStack
            } // VStack
        } // ZStack
    } // body
} // FriendsCell




