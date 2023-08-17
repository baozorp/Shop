//
//  MainViewObjectsModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

class MainViewObject: MainViewObjectsProtocol{
    var id: Int
    var info: String
    var image: Image

    
    init(id: Int, info: String = "MainView object info", image: Image = Image(systemName: "camera.macro.circle.fill")) {
        self.id = id
        self.image = image
        self.info = info
    }
}

struct MainViewObjectWrapped: Identifiable {
    let id = UUID()
    
    var wrapped: MainViewObject
}
