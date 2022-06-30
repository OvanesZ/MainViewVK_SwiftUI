//
//  FriendPhoto.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 28.06.2022.
//

import Foundation
import SwiftyJSON


class FriendPhoto: Identifiable {

    var url = ""
    var iconUrl: URL? { URL(string: "\(url)")}
    var height = 0
    var width = 0
    var type = ""
  
  
    
    convenience init(json: SwiftyJSON.JSON) {
        self.init()

        let firstJson = json["sizes"].arrayValue.first
        self.url = firstJson?["url"].stringValue ?? ""
//        self.id = firstJson?["id"].stringValue ?? ""
        self.height = firstJson?["height"].intValue ?? 0
        self.width = firstJson?["width"].intValue ?? 0
        self.type = firstJson?["type"].stringValue ?? ""
    }
}





