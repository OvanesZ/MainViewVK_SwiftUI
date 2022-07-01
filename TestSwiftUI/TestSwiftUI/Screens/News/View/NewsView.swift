//
//  NewsView.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 26.06.2022.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        
        
        List {
            Text("A List Item")
            Text("A Second List Item")
            Text("A Third List Item")
            IconImage {
                Image("groupLogo")
            }
            IconImage {
                Image("friendLogo")
            }
            Text("Next List Item")
        }
        
        
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
