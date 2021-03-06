//
//  HomeTabViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-01.
//

import UIKit

class HomeTabViewController: UIViewController {

    @IBOutlet weak var featureProductsCollectionView: UICollectionView!
    @IBOutlet weak var newProductsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false);
        
        featureProductsCollectionView.dataSource = self
        featureProductsCollectionView.delegate = self
        
        newProductsCollectionView.dataSource = self
        //featureProductsCollectionView.collectionViewLayout = UICollectionViewLayout()
    }
}

extension HomeTabViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count:Int = 0;
        if (collectionView == featureProductsCollectionView) {
            count = featuredproducts.count
        }
        if (collectionView == newProductsCollectionView) {
            count = newProducts.count
        }
        return count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        if (collectionView == featureProductsCollectionView) {
            cell.setup(with: featuredproducts[indexPath.row])
        } else {
            cell.setup(with: newProducts[indexPath.row])
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = self.storyboard!.instantiateViewController(withIdentifier: "ProductDetailViewController") as? ProductDetailViewController
        print("####path pint:\(indexPath.row)")
        print("####value pint:\(featuredproducts[indexPath.row].productName)")
        
        detailViewController?.name = featuredproducts[indexPath.row].productName
        detailViewController?.setupDetails(with: featuredproducts[indexPath.row])
        
        
        //let tap = UITapGestureRecognizer(target: self, action: #selector(self.someViewInMyCellTapped(_:)))
        //someViewInMyCell.addGestureRecognizer(tap)
        //tap.cancelsTouchesInView = false
        
        self.navigationController!.pushViewController(detailViewController!, animated: true)
    }
}

extension HomeTabViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250)
    }
}


