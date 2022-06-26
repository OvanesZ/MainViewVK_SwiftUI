//
//  GroupsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI

struct GroupsCell: View {
    
    let group: Group
    
    var body: some View {
        
        
        ZStack {
         
         
                VStack {
                    HStack {
                        IconImage {
                            Image(group.imageName)
                        }
                        
                        NameText {
                            Text("\(group.name)")
                        }
                    } //HStack
                } //Vstack
        } // ZStack
    }
}


