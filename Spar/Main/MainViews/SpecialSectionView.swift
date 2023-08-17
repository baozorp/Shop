//
//  SpecialSection.swift
//  Spar
//
//  Created by Михаил Шекунов on 18.08.2023.
//

import SwiftUI

struct SpecialSectionView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {
        VStack{
            SectionName(sectionName: "Специально для Вас")
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 15){
                    ForEach(mainViewModel.specials, id: \.id){ special in
                        Rectangle()
                            .foregroundColor(.white)
                            .overlay {
                                VStack(spacing: 0){
                                    special.image
                                        .resizable()
                                        .frame(height: 150)
                                        .scaledToFit()
                                    Spacer()
                                    VStack(spacing: 0){
                                        HStack{
                                            Text(special.dates)
                                                .foregroundColor(.gray)
                                                .font(.system(size: 12))
                                                .fontWeight(.semibold)
                                            Spacer()
                                        }
                                        .padding(.leading)
                                        HStack{
                                            Text(special.info)
                                                .foregroundColor(.black)
                                                .font(.system(size: 14))
                                                .fontWeight(.semibold)
                                            Spacer()
                                        }
                                        .padding(.top, 3)
                                        .padding(.bottom, 2)
                                        .padding(.leading)
                                        HStack{
                                            Text(special.condition)
                                                .foregroundColor(.gray)
                                                .multilineTextAlignment(.leading)
                                                .font(.system(size: 12))
                                            Spacer()
                                        }
                                        .padding(.leading)
                                        .padding(.bottom)
                                    }
                                }
                                //                            .aspectRatio(contentMode: .fit)
                            }
                            .frame(width: 300)
                    }
                    .cornerRadius(20)
                    .background{
                        Color.black
                            .cornerRadius(20)
                            .opacity(0.1)
                            .shadow(color: .black, radius: 1, x: 0, y: 0)
                            .blur(radius: 5, opaque: false)
                    }
                    
                }
                .padding(.vertical, 4)
                .padding(.leading)
            }
            .frame(height: 200)
        }
    }
}

