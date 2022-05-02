//
//  FeaturedProduct.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-02.
//

import UIKit

struct FeaturedProduct {
    let poductName: String
    let image: UIImage
    let productPrice: String
    let productCode: Int
    let availableUnits: Int
}

let featuredproducts: [FeaturedProduct] = [
    FeaturedProduct(poductName: "Mouse", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45", productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Keyboard", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60", productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "LCD Monitor", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "LED Monitor", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",  productCode: 458712, availableUnits: 20)
]

let allFeaturedproducts: [FeaturedProduct] = [
    FeaturedProduct(poductName: "Headset", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Mic", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Trackpad", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Gaming Mouse", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20),
    
    FeaturedProduct(poductName: "IMAC", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45", productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Mac Pro", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Mac mini", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Macbook Air", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20),

    FeaturedProduct(poductName: "Macbook Pro", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Mac Keyboard", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Mac Mouse", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(poductName: "Printer", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20)
]
