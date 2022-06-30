//
//  GroupsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI
import Kingfisher

struct GroupsCell: View {
    
    let group: Group
    
    var body: some View {
        
        
        ZStack {
                VStack {
                    HStack(alignment: .center, spacing: 0) {
//                        IconImage {
//                            Image(group.imageName)
//                        }
                        
                        KFImage(URL(string: group.photoUrl)!)
                        .padding()
                        .frame(width: 80, height: 80)
                        .modifier(CircleShadow(shadowColor: .black, shadowRadius: 9))
                        
                        
                        NameText {
                            Text("\(group.name)")
                        }
                    } //HStack
                } //Vstack
        } // ZStack
    }
}


