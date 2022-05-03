//
//  FeaturedProduct.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-02.
//

import UIKit

struct FeaturedProduct {
    let productName: String
    let image: UIImage
    let productPrice: String
    let productCode: Int
    let availableUnits: Int
}

let featuredproducts: [FeaturedProduct] = [
    FeaturedProduct(productName: "Mouse", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45", productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Keyboard", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60", productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "LCD Monitor", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "LED Monitor", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",  productCode: 458712, availableUnits: 20)
]

let allFeaturedproducts: [FeaturedProduct] = [
    FeaturedProduct(productName: "Headset", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Mic", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Trackpad", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Gaming Mouse", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20),
    
    FeaturedProduct(productName: "IMAC", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45", productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Mac Pro", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Mac mini", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Macbook Air", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20),

    FeaturedProduct(productName: "Macbook Pro", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$40.45",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Mac Keyboard", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$20.60",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Mac Mouse", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$50.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Printer", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$65.20",productCode: 458712, availableUnits: 20)
]

let newProducts: [FeaturedProduct] = [
    FeaturedProduct(productName: "Dell Laptop", image: UIImage(named: "mouse") ?? UIImage(), productPrice: "$200.45", productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "HP Laptop", image: UIImage(named: "keyboard") ?? UIImage(), productPrice: "$500.60", productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "DSLR Camera", image: UIImage(named: "lcd_monitor") ?? UIImage(), productPrice: "$450.00",productCode: 458712, availableUnits: 20),
    FeaturedProduct(productName: "Lens", image: UIImage(named: "led_monitor") ?? UIImage(), productPrice: "$650.20",  productCode: 458712, availableUnits: 20)
]
