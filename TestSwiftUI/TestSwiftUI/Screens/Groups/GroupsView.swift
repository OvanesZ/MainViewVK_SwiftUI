//
//  GroupsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct GroupsView: View {
    
    @State private var groups: [Group] = [
        Group(name: "В Группа 1", imageName: "groupLogo"),
        Group(name: "Г Группа 2", imageName: "groupLogo"),
        Group(name: "Б Группа 3", imageName: "groupLogo"),
        Group(name: "Д Группа 4", imageName: "groupLogo"),
        Group(name: "А Группа 5", imageName: "groupLogo"),
        Group(name: "К Группа 6", imageName: "groupLogo"),
        Group(name: "И Группа 7", imageName: "groupLogo"),
        Group(name: "Ж Группа 8", imageName: "groupLogo"),
        Group(name: "З Группа 9", imageName: "groupLogo"),
        Group(name: "Е Группа 10", imageName: "groupLogo")
    ]
    
    
    
    var body: some View {
        
        List(groups.sorted(by: { $0.name < $1.name })) { group in
            NavigationLink(destination: GroupsMainMenu()) {
                GroupsCell(group: group)
            }
        }
        .navigationBarTitle("Группы", displayMode: .inline)
        
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
