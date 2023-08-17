//
//  MainViewObjectsProtocol.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

protocol MainViewObjectsProtocol: Identifiable{
    var id: Int { get set }
    var info: String {get set}
    var image: Image {get set}
}
