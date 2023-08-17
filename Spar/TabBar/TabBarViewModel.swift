//
//  TabBarViewModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 15.08.2023.
//

import Foundation

protocol TabBarScenesProtocol{
    var appScenes: [Scenes] {get set}
}

struct TabBarViewModel: TabBarScenesProtocol{
    var appScenes: [Scenes] = Scenes.allCases
}
