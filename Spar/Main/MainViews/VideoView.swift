//
//  VideoView.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import Foundation
import SwiftUI

struct VideoView: View{
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View{
        VStack{
            SectionName(sectionName: "Видео")
            GeometryReader{ geometry in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            Spacer(minLength: -geometry.size.width * 0.6)
                            ForEach(mainViewModel.visibleAd, id: \.id) { element in
                                ZStack{
                                    element.wrapped.image
                                        .resizable()
                                        .scaledToFit()
                                        .onAppear{
                                            // Делаем зацикленную карусель, с помощью паттерна "легковес".
                                            // Данная реализация просто для отображения демо цикла,
                                            // метод нужно переписать для корректной работы
                                            mainViewModel.addAd()
                                        }
                                    HStack{
                                        Spacer()
                                        Circle()
                                            .foregroundColor(.white)
                                            .overlay {
                                                Image(systemName: "play.fill")
                                                    .foregroundColor(.green)
                                                    .padding(.all, 10)
                                            }
                                            .frame(width: 60, height: 60)
                                        Spacer()
                                    }
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
}
