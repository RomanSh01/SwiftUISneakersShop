//
//  Product.swift
//  ShoppimngApp
//
//  Created by Роман Шабардин on 07/08/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Nike Freak", image: "sneaker1", price: 120),
                           Product(name: "Nike Air Force", image: "sneaker2", price: 140),
                           Product(name: "New Balance", image: "sneaker3", price: 150),
                           Product(name: "Nike Run", image: "sneaker4", price: 120),
                           Product(name: "Air Jordan", image: "sneaker5", price: 190),
                           Product(name: "Air Force 1", image: "sneaker6", price: 220),
                           Product(name: "Nike AF Jetter", image: "sneaker7", price: 130),
                           Product(name: "Nike Kyrie", image: "sneaker8", price: 150),]
