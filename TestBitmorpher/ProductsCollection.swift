//
//  ProductsCollection.swift
//  TestBitmorpher
//
//  Created by Shuvo on 2/7/19.
//  Copyright © 2019 Shuvo. All rights reserved.
//

import UIKit

class ProductsCollection: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as! ProductsCell
        
        return cell 
    }

}
