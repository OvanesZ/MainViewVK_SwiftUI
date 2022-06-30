//
//  MainMenuView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct MainMenuView: View {
    
    @State var selectedView = 1
    
    let friend = Friend()
    let group = Group()
    let networkService = NetworkService()
    
    var body: some View {
        
        
        TabView(selection: $selectedView) {
            
            FriendsView(viewModel: FriendViewModel(friend: friend, networkService: self.networkService))
                .tabItem {
                    Image(systemName: "person.3.sequence")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView(viewModel: GroupViewModel(group: group, networkService: networkService))
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
        
        
    }
}

//struct MainMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainMenuView()
//    }
//}
