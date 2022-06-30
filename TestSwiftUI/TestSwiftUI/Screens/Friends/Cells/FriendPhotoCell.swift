//
//  FriendPhotoCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 28.06.2022.
//

import SwiftUI
import Kingfisher

struct FriendPhotoCell: View {
    
    let photo: FriendPhoto
   
    
 
    
    
    init(photo: FriendPhoto) {
        self.photo = photo
    }
    
    
    var body: some View {
        
        let widthCgFloat = CGFloat(photo.width)
        let heightCgFloat = CGFloat(photo.height)
        
        ZStack {
            VStack {
                HStack(alignment: .center, spacing: 0) {
                    
            
                    
                    KFImage(URL(string: self.photo.url)!)
                        .cancelOnDisappear(true)
                        .padding()
//                        .background(Color.blue)
                        .frame(width: widthCgFloat, height: heightCgFloat)
//                        .modifier(CircleShadow(shadowColor: .black, shadowRadius: 9))
                    

                    
                    
                } // HStack
            } // VStack
        } // ZStack
    }
}
