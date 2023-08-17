//
//  OptionsView.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import SwiftUI

struct OptionsView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View{
        GeometryReader{ geometry in
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(mainViewModel.options, id: \.id) { element in
//                        GeometryReader{g in
                            ZStack(alignment: .bottom){
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.blue)
                                    .opacity(0.6)
                                    .overlay(alignment: .topLeading){
                                        Text(element.info)
                                            .fontWeight(.semibold)
                                            .font(Font.footnote)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(2)
                                            .padding(.horizontal)
                                            .padding(.top, 4)
                                    }
                                element.image
                                    .resizable()
                                    .frame(height: geometry.size.height * 0.6)
                                    .scaledToFit()
                                    .padding(.top)
                            }
                            .background{
                                Color.black
                                    .cornerRadius(20)
                                    .opacity(0.1)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .blur(radius: 2, opaque: false)
                            }
                            
//                        }
                    }
                    .aspectRatio(0.8, contentMode: .fit)
                    
                    .padding(.trailing, 5)

                }
                .aspectRatio(contentMode: .fit)
                .padding(.leading)
            }
        }
        .frame(maxHeight: 120)
        .aspectRatio(contentMode: .fit)
        .padding(.vertical)
    }
}

