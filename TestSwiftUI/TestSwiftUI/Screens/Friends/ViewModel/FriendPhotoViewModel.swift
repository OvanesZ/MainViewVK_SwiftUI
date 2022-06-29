//
//  FriendPhotoViewModel.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 28.06.2022.
//

import Foundation
import SwiftUI

//  Сервис - бизнес-логика экрана Friends

class FriendPhotoViewModel: ObservableObject { // Отображаемый друг
    
    let photo: FriendPhoto
    let networkService: NetworkService
    let userToken = UserDefaults.standard.string(forKey: "vkToken")
    let friendID: FriendViewModel?
    
    
    @Published var photos: [FriendPhoto] = []
    
    init(photo: FriendPhoto, networkService: NetworkService, friendID: FriendViewModel) {
        self.photo = photo
        self.networkService = networkService
        self.friendID = friendID
    }
    
    
    
    public func fetchFriendPhotos() {
        
        let owner = (friendID?.friend.friendID)!
        
        networkService.loadPhoto(token: userToken!, owner: owner, completion:  { result in
            
            switch result {
            case let .success(photo):
                self.photos = photo
            case let .failure(error):
                print(error)
            }
        })
    }
    
    
    
    
    
}
