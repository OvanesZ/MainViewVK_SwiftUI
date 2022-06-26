//
//  Friend.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import Foundation


class Friend: Identifiable {
    
    let id: UUID = UUID()
    let name: String
    let imageName: String
    
    internal init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
