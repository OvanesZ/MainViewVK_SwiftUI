//
//  Friend.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import Foundation
import SwiftyJSON


class Friend: Identifiable {
    
//    let id: UUID = UUID()
//    let name: String
//    let imageName: String
    
//    internal init(name: String, imageName: String) {
//        self.name = name
//        self.imageName = imageName
//    }
    
    
    
    var firstName = ""
    var lastName = ""
    var friendImageUrlText = ""
    var friendImage: URL? { URL(string: "\(friendImageUrlText)") }
  //  var photosArray: [UIImage?] = []
    var friendID = 0
 //   let photosFriendAlbum = List<Photo>()
    
    
    convenience init(json: SwiftyJSON.JSON) {
        self.init()
        
        self.firstName = json["first_name"].stringValue
        self.lastName = json["last_name"].stringValue
        self.friendImageUrlText = json["photo_100"].stringValue
        self.friendID = json["id"].intValue
    }
    
    
}
