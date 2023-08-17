//
//  MainNavigationBar.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

struct MainNavigationBar: View{
    
    var body: some View{
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(height: 35)
                HStack{
                    Image(systemName: "mappin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 10)
                        .padding(.vertical, 10)
                        .foregroundColor(.red)
                    Text("Нижний Новгород, Нижегородская область ")
                        .padding(.trailing)
                        .font(Font.custom("Font for map", size: 14))
                        .lineLimit(1)
                }
                
            }
            .aspectRatio(contentMode: .fit)
            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(height: 13)
                .foregroundColor(.green)
                .fontWeight(.medium)
                .aspectRatio(0.5, contentMode: .fit)
        }
    }
}
