//
//  HomeTable.swift
//  TestBitmorpher
//
//  Created by Shuvo on 2/7/19.
//  Copyright © 2019 Shuvo. All rights reserved.
//

import UIKit

class HomeTable: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    override func awakeFromNib() {
        print("UITableView")
        self.delegate = self
        self.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        if(row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell") as! FeatureCell
            
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
            
            return cell 
        }
    }
}
