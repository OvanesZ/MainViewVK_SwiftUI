//
//  GroupsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct GroupsView: View {
    
    @ObservedObject var viewModel: GroupViewModel
    
    var body: some View {
        
        List(viewModel.groups) { group in
            NavigationLink(destination: GroupsMainMenu()) {
                GroupsCell(group: group)
            }
        }
        .onAppear(perform: viewModel.fetchGroups)
        .navigationBarTitle(viewModel.group.name)
    }
}



//List(groups.sorted(by: { $0.name < $1.name })) { group in
//    NavigationLink(destination: GroupsMainMenu()) {
//        GroupsCell(group: group)
//    }
//}
