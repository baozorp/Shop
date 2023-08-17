//
//  SpecialModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 18.08.2023.
//

import Foundation
import SwiftUI

class Special: MainViewObjectsProtocol{
    var id: Int
    var dates: String
    var info: String
    var condition: String
    var image: Image
    

    
    init(id: Int, dates: String = "", info: String = "", condition: String = "", image: Image = Image("adImage")) {
        self.id = id
        self.dates = dates
        self.info = info
        self.condition = condition
        self.image = image
    }
}
