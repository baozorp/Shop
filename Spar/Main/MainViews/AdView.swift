//
//  AdView.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

struct AdView: View{
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View{
        GeometryReader{ geometry in
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    Spacer(minLength: -geometry.size.width * 0.6)
                    ForEach(mainViewModel.visibleAd, id: \.id) { element in
                        element.wrapped.image
                            .resizable()
                            .scaledToFit()
                            .onAppear{
                                // Делаем зацикленную карусель, с помощью паттерна "легковес".
                                // Данная реализация просто для отображения демо цикла,
                                // метод нужно переписать для корректной работы
                                mainViewModel.addAd()
                            }
                    }
                    .frame(width: geometry.size.width * 0.84)
                }
                .padding(.horizontal)
            }
        }
        .aspectRatio(2.1, contentMode: .fit)
        .padding(.top, 5)
    }
}
