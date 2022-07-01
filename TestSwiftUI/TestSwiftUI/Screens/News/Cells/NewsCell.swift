//
//  NewsCell.swift
//  TestSwiftUI
//
//  Created by Ованес Захарян on 01.07.2022.
//

import SwiftUI

struct NewsCell: View {
    
    
    
    
    
    
    var body: some View {
        
        
        VStack {
            
            
            
            Text("Друг / Группа")
                .font(.custom("YouTube Sans", fixedSize: 20))
                .padding()
            
            Image("background")
                .resizable()
                .frame(width: 300, height: 200)
                
                
            Text("Здесь будет бесконечное множетсво текста. Кот Шрёдингера (в оригинале — «кошка») — мысленный эксперимент, предложенный одним из создателей квантовой механики Эрвином Шрёдингером в 1935 году при обсуждении физического смысла волновой функции. В ходе эксперимента возникает суперпозиция живого и мёртвого кота, что выглядит абсурдно с точки зрения здравого смысла. Конец.")
                .padding([.leading, .trailing])
            
            
        }
        
        
        
        
        
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell()
    }
}
