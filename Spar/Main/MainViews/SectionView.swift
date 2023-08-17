//
//  SectionView.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import SwiftUI

struct SectionView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
    var sectionName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            SectionName(sectionName: sectionName)
            sectionObjectView
        }
    }
    


    var sectionObjectView: some View{
        GeometryReader{ geometry in
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(mainViewModel.visibleProduct, id: \.id){product in
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width/3)
                            .overlay {
                                VStack(){
                                    product.wrapped.image
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.vertical, 10)
                                        .padding(.horizontal)
                                    LazyHStack(alignment: .center, spacing: 0){
                                        VStack(alignment: .leading){
                                            Text(product.wrapped.currentPrice)
                                                .font(Font.system(size: 12))
                                                .fontWeight(.semibold)
                                                .lineLimit(1)
                                            if !product.wrapped.previousPrice.isEmpty{
                                                Text(product.wrapped.previousPrice)
                                                    .foregroundColor(.gray)
                                                    .font(Font.system(size: 10))
                                                    .lineLimit(1)
                                                    .strikethrough()
                                            }
                                        }
                                        VStack{
                                            ZStack{
                                                VStack{
                                                    Text("\(product.wrapped.currency)   ")
                                                        .font(Font.system(size: 8))
                                                    Spacer()
                                                }
                                                Image(systemName: "line.diagonal")
                                                VStack{
                                                    Spacer()
                                                    LazyHStack{
                                                        Text("   ")
                                                            .font(Font.system(size: 3))
                                                        Text("\(product.wrapped.measurement)")
                                                            .font(Font.system(size: 8))
                                                    }
                                                }
                                            }
                                            if !product.wrapped.previousPrice.isEmpty{
                                                Text("")
                                                    .foregroundColor(.gray)
                                                    .font(Font.system(size: 10))
                                                    .lineLimit(1)
                                            }
                                        }
                                        .padding(.trailing)
                                        Spacer()
                                        basketCircle
                                    }
                                    .frame(height: 30)
                                    .padding(.horizontal, 13)
                                    .padding(.bottom, 5)
                                }
                            }
                            .onAppear{
                                // Делаем бесконечную вправо карусель, с помощью паттерна "легковес".
                                // Данная реализация просто для отображения демо цикла,
                                // метод нужно переписать для корректной работы
                                mainViewModel.addProduct()
                            }
                    }
                    .background{
                        Color.black
                            .cornerRadius(20)
                            .opacity(0.05)
                            .shadow(color: .black, radius: 1, x: 0, y: 0)
                            .blur(radius: 5, opaque: false)
                    }
                    .padding(.vertical, 2)
                }
                .padding(.horizontal)
                
            }


        }
        .frame(height: 150)
        .padding(.top, 5)
    }
    
    var basketCircle: some View{
        Circle()
            .foregroundColor(.green)
            .overlay {
                Image(systemName: "basket.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .padding(.all, 8)
            }
                    .frame(height: 30)
    }
    
}
