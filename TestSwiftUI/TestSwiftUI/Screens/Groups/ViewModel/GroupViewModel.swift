//
//  GroupViewModel.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 28.06.2022.
//

import Foundation

class GroupViewModel: ObservableObject { // Отображаемый друг
    
    let group: Group
    let networkService: NetworkService
    let userToken = UserDefaults.standard.string(forKey: "vkToken")
    
    @Published var groups: [Group] = []
    
    init(group: Group, networkService: NetworkService) {
        self.group = group
        self.networkService = networkService
    }
    
    

    public func fetchGroups() {
        
        networkService.loadGroup(token: userToken!, completion: { result in
            
            switch result {
            case let .success(groups):
                self.groups = groups
            case let .failure(error):
                print(error)
            }
        })
    }
  



}
