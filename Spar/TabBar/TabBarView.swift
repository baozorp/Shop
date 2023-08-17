//
//  TabBarView.swift
//  Spar
//
//  Created by Михаил Шекунов on 15.08.2023.
//

import SwiftUI

struct TabBarView: View {
    
    @State var tabBarViewModel: TabBarViewModel = TabBarViewModel()
    @State var tag: Scenes = .main
    var body: some View {
        ZStack{
            TabView(selection: $tag){
                ForEach(tabBarViewModel.appScenes, id: \.self){element in
                    element.view
                        .tabItem {
                            element.image
                            Text(element.name)
                        }
                        .tag(tag)
                }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
