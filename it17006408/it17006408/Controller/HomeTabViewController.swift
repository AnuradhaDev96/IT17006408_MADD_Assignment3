//
//  HomeTabViewController.swift
//  it17006408
//
//  Created by Anuradha Hewa Siribaddana on 2022-05-01.
//

import UIKit

class HomeTabViewController: UIViewController {

    @IBOutlet weak var featureProductsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false);
        
        featureProductsCollectionView.dataSource = self
        featureProductsCollectionView.delegate = self
        //featureProductsCollectionView.collectionViewLayout = UICollectionViewLayout()
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

extension HomeTabViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featuredproducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.setup(with: featuredproducts[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = self.storyboard!.instantiateViewController(withIdentifier: "ProductDetailViewController") as? ProductDetailViewController
        
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


