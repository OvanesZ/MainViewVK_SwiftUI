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
    
    
    
  
    
    
    
 
    
    
    
    
    
    
    
    var body: some View {
        
        
        let columns: [GridItem] = [
            GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 5)
        ]
        
        
        
        
        
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 1
            ){
                
                // https://fonts-online.ru/fonts/volja/download Скачать новые шрифты
                Section(header: Text("Все фотографии").font(.custom("Volja", fixedSize: 20))) {
                    
                    
                    if let photos = viewModel.photos {
                        
                        ForEach(photos) { photo in
                            FriendPhotoCell(photo: photo)
                        }
                    }
                }
            }
        }
        .onAppear(perform: viewModel.fetchFriendPhotos)
        .navigationBarTitle(Text("\(displayedFriend!.friend.firstName) \(displayedFriend!.friend.lastName)"), displayMode: .inline)
    }
    
    
}
