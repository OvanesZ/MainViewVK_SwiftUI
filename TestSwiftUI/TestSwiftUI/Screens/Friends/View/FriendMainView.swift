//
//  FriendMainMenu.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendMainView: View {
    
    @ObservedObject var viewModel: FriendPhotoViewModel
    let displayedFriend: FriendViewModel?
    
    init(viewModel: FriendPhotoViewModel, displayedFriend: FriendViewModel) {
        self.viewModel = viewModel
        self.displayedFriend = displayedFriend
    }
    
    private var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16)
    ]
    
    
    var body: some View {
        
        
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 16
            ){
                Section(header: Text("\(displayedFriend!.friend.firstName) \(displayedFriend!.friend.lastName)").font(.title)) {
                    
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
