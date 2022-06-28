//
//  FriendsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendsView: View {
    
    @ObservedObject var viewModel: FriendViewModel
    
    init(viewModel: FriendViewModel) {
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendMainMenu()) {
                FriendsCell(friend: friend)
            }
        }
        .onAppear(perform: viewModel.fetchFriends)
        .navigationBarTitle(viewModel.friend.firstName)
        

    }
}
