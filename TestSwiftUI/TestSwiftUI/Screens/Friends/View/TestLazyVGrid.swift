//
//  TestLazyVGrid.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 29.06.2022.
//

import SwiftUI

struct TestLazyVGrid: View {
    
    private var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 5),
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 5)
        
    ]
    
    
    
    
    
    var body: some View {
      
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 15
            ){
                Section(header: Text("Test").font(.title2).italic()) {
                    
                    
                    ForEach(0...10, id: \.self) { index in
                        Color.gray
                    }
                    
                    
                }
            }
            .padding()
        }
        
        
        
        
        
    }
}







struct TestLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        TestLazyVGrid()
    }
}
