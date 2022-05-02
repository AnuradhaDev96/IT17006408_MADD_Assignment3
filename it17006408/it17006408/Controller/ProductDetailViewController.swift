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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func setupDetails(with product: FeaturedProduct) {
        productNameLabel?.text = product.poductName
        productImageView?.image = product.image
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
