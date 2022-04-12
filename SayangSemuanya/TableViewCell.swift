//
//  TableViewCell.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 11/04/22.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell{
    
    var cek = false
    @IBOutlet weak var wishClicked: UIButton!
    @IBOutlet weak var shopName: UILabel!
//    @IBOutlet weak var shopDetail: UILabel!
    @IBOutlet weak var shopImage: UIImageView!
    
    
    
    @IBAction func wishClicked(_ sender: Any) {
        if cek == false {
    //            print("change")
            cek = true
            wishClicked.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            wishClicked.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }

    
}
