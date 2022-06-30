//
//  FriendViewModel.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 27.06.2022.
//

import Foundation

//  Сервис - бизнес-логика экрана Friends

class FriendViewModel: ObservableObject { // Отображаемый друг
    
    let friend: Friend
    let networkService: NetworkService
    let userToken = UserDefaults.standard.string(forKey: "vkToken")
    
    @Published var friends: [Friend] = []
    
    init(friend: Friend, networkService: NetworkService) {
        self.friend = friend
        self.networkService = networkService
    }
    
    
   
//    networkService.loadFriendsID(token: userToken, completion: { result in
//        switch result {
//        case let .failure(error):
//            print(error)
//        case let .success(friends):
//
//            do {
//                let newFriend = friends
//                try self.realm?.write({
//                    self.realm?.add(newFriend, update: Realm.UpdatePolicy.all)
//                    print(self.realm?.configuration.fileURL ?? "")
//                })
//            } catch {
//                print(error)
//            }
//        }
//})

    public func fetchFriends() {
        
        networkService.loadFriendsID(token: userToken!, completion: { result in
            
            switch result {
            case let .success(friends):
                self.friends = friends
            case let .failure(error):
                print(error)
            }
        })
    }
  



}
