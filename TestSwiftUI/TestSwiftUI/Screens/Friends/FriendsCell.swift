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
            
//            GeometryReader { geometry in
//                Image("backgroundCell")
//                    .resizable()
//                    .edgesIgnoringSafeArea(.all)
//                    .aspectRatio(contentMode: .fill)
//            }
            
          
                    
                    
                    
                    
                    
                    HStack(alignment: .center, spacing: 0) {
                        
                        Image(friend.imageName)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .modifier(CircleShadow(shadowColor: .black, shadowRadius: 9))
                        
                        
                        
                        Text("\(friend.name)")
//                            .padding(.trailing, 150)
                            .padding(.leading, 25)
                            .controlSize(.large)
                            .foregroundColor(.black)
                    } // HStack
//                    .padding(.bottom, 650)
 
        } // ZStack
    } // body
} // FriendsCell








//extension View {
//    func debug() -> Self {
//        print(Mirror(reflecting: self).subjectType)
//        return self
//    }
//}



