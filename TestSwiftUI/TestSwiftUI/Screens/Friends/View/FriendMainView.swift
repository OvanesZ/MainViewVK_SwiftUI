//
//  FriendMainMenu.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendMainView: View {
    
    let displayedFriend: FriendViewModel?
    @ObservedObject var viewModel: FriendPhotoViewModel
    
    
    init(viewModel: FriendPhotoViewModel, displayedFriend: FriendViewModel) {
        self.viewModel = viewModel
        self.displayedFriend = displayedFriend
    }
    
    
    
    private var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 16),
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 16)
    ]
    
    
    var body: some View {
        
        
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .leading,
                spacing: 16
            ){
                Section(header: Text("\(displayedFriend!.friend.firstName) \(displayedFriend!.friend.lastName)").font(.title2).italic()) {
                    
                    
                    if let photos = viewModel.photos {
                        
                        ForEach(photos) { photo in
                            FriendPhotoCell(photo: photo)
                        }
                    }
                }
            }
        }
        .onAppear(perform: viewModel.fetchFriendPhotos)
        
        
    }
    
    
}

//struct FriendMainMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendMainView()
//    }
//}
