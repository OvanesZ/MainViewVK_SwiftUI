//
//  Group.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import Foundation
import SwiftyJSON


class Group: Identifiable {
    
    var name: String = ""
    var photoUrl: String = ""
    var groupImage: URL? { URL(string: "\(photoUrl)") }
    var id: String = ""

    
    convenience init(json: SwiftyJSON.JSON) {
        self.init()
        
        self.name = json["name"].stringValue
        self.photoUrl = json["photo_100"].stringValue
        self.id = json["id"].stringValue
    }
}
