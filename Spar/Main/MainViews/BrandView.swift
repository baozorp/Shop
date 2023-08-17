//
//  BrandView.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import SwiftUI

struct BrandView: View {
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {

        VStack{
            SectionName(sectionName: "Бренды")
            GeometryReader{geometry in
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        ForEach(mainViewModel.brands, id: \.id){brand in
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray)
                                .frame(width: geometry.size.width/3)
                                .overlay {
                                    brand.image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.all, 10)
                                }
                                .padding(.vertical, 2)
                        }
                    }
                    .padding(.leading)
                }
            }
            .frame(height: 60)
            .padding(.top)
        }
    }
}

