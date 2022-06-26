//
//  MainMenuView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct MainMenuView: View {
    
    @State var selectedView = 1
    
    var body: some View {
        
        
        TabView(selection: $selectedView) {
            
            FriendsView()
                .tabItem {
                    Image(systemName: "person.3.sequence")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView()
                .tabItem {
                    Image(systemName: "rectangle.3.group")
                    Text("Группы")
                }.tag(2)
        }
        
        
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
