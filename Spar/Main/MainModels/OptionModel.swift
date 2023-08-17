//
//  AdModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

class Option: MainViewObjectsProtocol{
    var id: Int
    var info: String
    var image: Image
    
    init(id: Int, info: String = "Option info", image: Image = Image("optionImage")){
        self.id = id
        self.image = image
        self.info = info
    }
}

