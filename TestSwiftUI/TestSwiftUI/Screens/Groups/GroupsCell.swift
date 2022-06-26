//
//  GroupsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 19.06.2022.
//

import SwiftUI

struct GroupsCell: View {
    var body: some View {
        
        
        ZStack {
            GeometryReader { geometry in
                BackgroundImage {
                    Image("backgroundCell")
                }
            }
            ScrollView {
                VStack {
                    
                    Text("Группы")
                        .font(.system(.headline, design: .serif))
                        .foregroundColor(.white)
                    
                    
                    HStack {
                        IconImage {
                            Image("groupLogo")
                        }
                        
                        NameText {
                            Text("Лига Чемпионов")
                        }
                    } //HStack
                    .padding(.bottom, 650)
                    .frame(maxWidth: 950, maxHeight: 850)
                    .padding(.trailing, 110)
                } //Vstack
                .padding()
            } // ScrollView
        } // ZStack
    }
}

struct GroupsCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupsCell()
    }
}
