//
//  ProductDetailViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-02.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCodeLabel: UILabel!
    @IBOutlet weak var availableUnitsLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productQuantity: UILabel!
    
    var name = "";
    var productToDisplay: FeaturedProduct?
    var quantity: Int = 0 {
        didSet {
            productQuantity.text = "\(quantity)"
        }
    };
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quantity = 0;
        
        productNameLabel.text = productToDisplay?.productName
        productCodeLabel.text = "Code: \(productToDisplay?.productCode ?? 000000)"
        productImageView.image = productToDisplay?.image
        availableUnitsLabel.text = "\(productToDisplay?.availableUnits ?? 0) units available"
        productPriceLabel.text = productToDisplay?.productPrice

        // Do any additional setup after loading the view.
    }
    
    func setupDetails(with product: FeaturedProduct) {
        productToDisplay = product
    }
    
    @IBAction func onTapReduceQuantityButton(_ sender: Any) {
        guard quantity <= 0 else {
            quantity -= 1
            return
        }
    }
    
    
    @IBAction func onTapIncreaseQuantityButton(_ sender: Any) {
        guard quantity >= 99 else {
            quantity += 1
            return
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
