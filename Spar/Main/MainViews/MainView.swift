//
//  MainView.swift
//  Spar
//
//  Created by Михаил Шекунов on 15.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var mainViewModel: MainViewModel = MainViewModel()
    @State var index: Int = 0
    @State var scrollDirection: Bool = true
    let views: [AnyView]
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(alignment: .center){
                    ForEach(0..<views.count, id: \.self) { i in
                        views[i]
                    }
                }
                .padding(.bottom)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigation){
                    MainNavigationBar()
                }
            }
        }
        .environmentObject(mainViewModel)
    }
    
    init() {
        self.views = [AnyView(StoryView()),
                      AnyView(AdView()),
                      AnyView(QRView()),
                      AnyView(OptionsView()),
                      AnyView(SectionView(sectionName: "Рекомендуем")),
                      AnyView(SectionView(sectionName: "Сладкое настроение")),
                      AnyView(SectionView(sectionName: "Шашлыки на Ура")),
                      AnyView(SpecialSectionView()),
                      AnyView(SectionView(sectionName: "Для Детей")),
                      AnyView(SectionView(sectionName: "Вкусы лета")),
                      AnyView(VideoView()),
                      AnyView(SectionView(sectionName: "We Love Fresh")),
                      AnyView(SectionView(sectionName: "Чистота и красота")),
                      AnyView(BrandView()),
                      AnyView(SectionView(sectionName: "С заботой о детях")),
                      AnyView(SectionView(sectionName: "Новинки SPAR"))]
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
