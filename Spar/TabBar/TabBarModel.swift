//
//  TabBarModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 15.08.2023.
//

import Foundation
import SwiftUI

enum Scenes: CaseIterable {
    case main
    case catalog
    case cart
    case profile
    
    var name: String {
        switch self {
        case .main: return "Главная"
        case .catalog: return "Каталог"
        case .cart: return "Корзина"
        case .profile: return "Профиль"
        }
    }
    
    var image: Image {
        switch self {
        case .main: return Image(systemName: "house.fill")
        case .catalog: return Image(systemName: "square.split.2x2")
        case .cart: return Image(systemName: "cart")
        case .profile: return Image(systemName: "person")
        }
    }
    
    var view: AnyView {
        switch self {
        case .main: return AnyView(MainView())
        case .catalog: return AnyView(Text(self.name))
        case .cart: return AnyView(Text(self.name))
        case .profile: return AnyView(Text(self.name))
        }
    }
}

extension Scenes: Identifiable {
    var id: Self { self }
}
