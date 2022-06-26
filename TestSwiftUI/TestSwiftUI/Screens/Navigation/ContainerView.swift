//
//  ContainerView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 25.06.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var showFriendsScreen = false
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            HStack {
                VKLogin(isUserLoggedIn: $showFriendsScreen)
                
                // MARK: - NavigationLink
                
                NavigationLink(destination: GroupsView(), isActive: $showFriendsScreen) {
                    EmptyView() // безрзмерная заглушка (вьюшка) 
                }
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
