//
//  FriendMainMenu.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct FriendMainView: View {
    
    @ObservedObject var viewModel: FriendPhotoViewModel
    
    
    

    
    
    init(viewModel: FriendPhotoViewModel) {
        self.viewModel = viewModel
    }
    
    

    
    var body: some View {
        Text("Здесь будет главная страница выбранного друга")
            .padding()
        
    
        
        
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 300))]) {
            ForEach(viewModel.photos) { photo in
                FriendPhotoCell(photo: photo)
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
