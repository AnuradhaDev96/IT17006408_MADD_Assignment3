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
}

let featuredproducts: [FeaturedProduct] = [
    FeaturedProduct(poductName: "mouse", image: UIImage(named: "mouse") ?? UIImage()),
    FeaturedProduct(poductName: "keyboard", image: UIImage(named: "keyboard") ?? UIImage()),
    FeaturedProduct(poductName: "lcd monitor", image: UIImage(named: "lcd_monitor") ?? UIImage()),
    FeaturedProduct(poductName: "led monitor", image: UIImage(named: "led_monitor") ?? UIImage())
]
