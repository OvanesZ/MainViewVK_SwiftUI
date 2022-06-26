//
//  FriendsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendsView: View {
    
    @State private var friends: [Friend] = [
        Friend(name: "В Друг 1", imageName: "friendLogo"),
        Friend(name: "Г Друг 2", imageName: "friendLogo"),
        Friend(name: "Б Друг 3", imageName: "friendLogo"),
        Friend(name: "Д Друг 4", imageName: "friendLogo"),
        Friend(name: "А Друг 5", imageName: "friendLogo"),
        Friend(name: "К Друг 6", imageName: "friendLogo"),
        Friend(name: "И Друг 7", imageName: "friendLogo"),
        Friend(name: "Ж Друг 8", imageName: "friendLogo"),
        Friend(name: "З Друг 9", imageName: "friendLogo"),
        Friend(name: "Е Друг 10", imageName: "friendLogo")
    ]
    
    
    var body: some View {
        
        List(friends.sorted(by: { $0.name < $1.name })) { friend in
            NavigationLink(destination: FriendMainMenu()) {
                FriendsCell(friend: friend)
            }
        }
        .navigationBarTitle("Друзья", displayMode: .inline)
//        .navigationBarHidden(true)

//        .navigationTitle("Друзья")
        

    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
