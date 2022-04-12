//
//  TableViewDetail.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 12/04/22.
//

import Foundation
import UIKit

class TableViewDetail: UIViewController
{
    @IBOutlet var wishList: UIButton!
    @IBOutlet var imageDetail: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var price: UIButton!
    
    var selectedMerchant : Merchant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedMerchant.name
        imageDetail.image = UIImage(named: selectedMerchant.imageName)
    }
}
