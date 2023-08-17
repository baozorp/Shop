//
//  ProductModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import Foundation
import SwiftUI



class Product: MainViewObjectsProtocol{
    var id: Int
    var info: String
    var image: Image
    var currentPrice: String
    var previousPrice: String
    var currency: String
    var measurement: String
    
    init(id: Int, info: String = "Product info", image: Image = Image("productImage"), currentPrice: String = "100,00", previousPrice: String = "20,00", currency: String = "₽", measurement: String = "шт"){
        self.id = id
        self.image = image
        self.info = info
        self.currentPrice = currentPrice
        self.previousPrice = previousPrice
        self.currency = currency
        self.measurement = measurement
    }
}
struct ProductWrapped: Identifiable {
    let id = UUID()
    var wrapped: Product
}
