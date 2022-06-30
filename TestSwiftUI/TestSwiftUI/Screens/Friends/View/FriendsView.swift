//
//  FriendsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendsView: View {
    
    @ObservedObject var viewModel: FriendViewModel
    
    let friend = Friend()
    let photo = FriendPhoto()
    let networkService = NetworkService()
    
    init(viewModel: FriendViewModel) {
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendMainView(viewModel: FriendPhotoViewModel(photo: photo, networkService: networkService, friendID: FriendViewModel(friend: friend, networkService: networkService)), displayedFriend: FriendViewModel(friend: friend, networkService: networkService))) {
                FriendsCell(friend: friend)
            }
        }
        .onAppear(perform: viewModel.fetchFriends)
        .navigationBarTitle(viewModel.friend.firstName)
        

    }
}
