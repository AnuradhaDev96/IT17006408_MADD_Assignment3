//
//  ProductCollectionViewCell.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-02.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var addToCartBtn: UIButton!
    
    func setup(with product: FeaturedProduct) {
        productImage.image = product.image
        productName.text = product.poductName
    }
}
