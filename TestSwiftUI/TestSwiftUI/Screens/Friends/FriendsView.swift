//
//  FriendsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendsView: View {
    
//    @State private var friends: [Friend] = [
//        Friend(name: "В Друг 1", imageName: "friendLogo"),
//        Friend(name: "Г Друг 2", imageName: "friendLogo"),
//        Friend(name: "Б Друг 3", imageName: "friendLogo"),
//        Friend(name: "Д Друг 4", imageName: "friendLogo"),
//        Friend(name: "А Друг 5", imageName: "friendLogo"),
//        Friend(name: "К Друг 6", imageName: "friendLogo"),
//        Friend(name: "И Друг 7", imageName: "friendLogo"),
//        Friend(name: "Ж Друг 8", imageName: "friendLogo"),
//        Friend(name: "З Друг 9", imageName: "friendLogo"),
//        Friend(name: "Е Друг 10", imageName: "friendLogo")
//    ]
    
    
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

//struct FriendsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendsView()
//    }
//}
