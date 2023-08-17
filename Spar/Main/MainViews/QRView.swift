//
//  QRView.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

struct QRView: View{
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.gray)
            HStack(alignment: .top){
                VStack{
                    HStack(alignment: .lastTextBaseline){
                        Text("0")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("бонусов")
                            .frame(alignment: .bottom)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                }
                .padding(.top)
                Spacer()
                Color.white
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Image(systemName: "qrcode")
                            .resizable()
                            .padding(.all, 10)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(5)
                    .padding(.vertical, 10)
                    .padding(.trailing, 5)
            }
            .padding(.horizontal)
        }
        .background{
            Color.black
                .cornerRadius(20)
                .opacity(0.3)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
                .blur(radius: 4, opaque: false)
        }
        .frame(height: 105)
        .padding(.horizontal)
    }
}
