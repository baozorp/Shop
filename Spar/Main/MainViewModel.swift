//
//  MainViewModel.swift
//  Spar
//
//  Created by Михаил Шекунов on 16.08.2023.
//

import Foundation
import SwiftUI

class MainViewModel: ObservableObject{
    @Published var stories: [MainViewObject]
    @Published var visibleAd: [MainViewObjectWrapped]
    @Published var visibleProduct: [ProductWrapped]
    @Published var options: [MainViewObject]
    @Published var brands: [MainViewObject]
    @Published var specials: [Special]
    
    private var adSection: [MainViewObject]
    private var adSectionIndex: Int = 0
    func addAd(){
        self.adSectionIndex = (self.adSectionIndex + 1) % self.visibleAd.count
        self.visibleAd.append(MainViewObjectWrapped(wrapped: self.visibleAd[adSectionIndex].wrapped))
    }
    
    private var productSection: [Product]
    private var productSectionIndex: Int = 0
    func addProduct(){
        self.productSectionIndex = (self.productSectionIndex + 1) % self.visibleProduct.count
        self.visibleProduct.append(ProductWrapped(wrapped: self.visibleProduct[productSectionIndex].wrapped))
    }
    
    

    
    init(){
        self.stories = {
            var stories: [MainViewObject] = []
            for i in 0..<10 {
                let story = MainViewObject(id: i, info: "Story info")
                stories.append(story)
            }
            return stories
        }()
        self.adSection = {
            var adSection: [MainViewObject] = []
            for i in 0..<10 {
                let ad = MainViewObject(id: i, info: "Ad info", image: Image("adImage"))
                adSection.append(ad)
            }
            return adSection
        }()
        self.visibleAd = [MainViewObjectWrapped(wrapped: self.adSection.first!)]
        self.options = {
            var options: [MainViewObject] = []
            for i in 0..<10 {
                let option = MainViewObject(id: i, info: "Option info", image: Image("optionImage"))
                options.append(option)
            }
            return options
        }()
        self.productSection = {
            var productSection: [Product] = []
            for i in 0..<10 {
                let product = Product(id: i)
                productSection.append(product)
            }
            return productSection
        }()
        self.visibleProduct = productSection.map({ product in
            ProductWrapped(wrapped: product)
        })
        self.brands = {
            var brands: [MainViewObject] = []
            for i in 0..<10 {
                let brand = MainViewObject(id: i, info: "Brand info", image: Image("brandImage"))
                brands.append(brand)
            }
            return brands
        }()
        self.specials = {
            var brands: [Special] = []
            for i in 0..<10 {
                let brand = Special(id: i, dates: "C 01 по 30 августа", info: "Сковрода", condition: "Купите сковороду", image: Image("specialImage"))
                brands.append(brand)
            }
            return brands
        }()
    }
}
