//
//  StoryView.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

struct StoryView: View{
    
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 0){
                ForEach(mainViewModel.stories, id: \.id) { story in
                    VStack{
                        Circle()
                            .stroke(Color.green, lineWidth: 2)
                            .foregroundColor(.green)
                            .frame(width: 55, height: 55)
                            .overlay {
                                story.image
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .padding(.all, 2)
                            }
                            .padding(.trailing, 15)
                        Text(story.info)
                            .font(Font.system(size: 11))
                            .fontWeight(Font.Weight.regular)
                            .frame(width: 55)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 15)
                            .padding(.top, 5)
                    }
                }
                .padding(.leading)
            }
            .padding(.top)
        }
    }
}
