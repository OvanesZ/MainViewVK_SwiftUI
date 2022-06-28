//
//  MainMenuView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct MainMenuView: View {
    
    @State var selectedView = 1
    var navigationTitleName = ["Друзья", "Группы", "Новости"]
    
    let friend = Friend()
    let networkService = NetworkService()
    
    var body: some View {
        
        
        TabView(selection: $selectedView) {
            
            FriendsView(viewModel: FriendViewModel(friend: friend, networkService: self.networkService))
                .tabItem {
                    Image(systemName: "person.3.sequence")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView()
                .tabItem {
                    Image(systemName: "rectangle.3.group")
                    Text("Группы")
                }.tag(2)
            
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Новости")
                }.tag(3)
        }
        .navigationTitle(navigationTitleName[selectedView - 1])
        
        
    }
}

//struct MainMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainMenuView()
//    }
//}
