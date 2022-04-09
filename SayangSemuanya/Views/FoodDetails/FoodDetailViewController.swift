//
//  FoodDetailViewController.swift
//  SayangSemuanya
//
//  Created by Agus Hery on 07/04/22.
//

import UIKit

class FoodDetailViewController: UIViewController {

    var food: Food!
    @IBOutlet var wishList: UIButton!
    @IBOutlet var imageDetail: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var price: UIButton!
    
    @IBOutlet var backButton: UIBarButtonItem!
    
    
    
    var cek = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // set detail (tp blm berhasil)
    private func detail(){
        imageDetail.image = food.image
        titleLabel.text = food.name
        descriptionLabel.text = food.description
        price.setTitle(food.price, for: .normal)
    }
    
    // pindah page
    @IBAction func didBack(_ sender: Any) {
            let controller = storyboard? .instantiateViewController(withIdentifier: "ListFoodViewController") as! UIViewController; controller.modalPresentationStyle = .fullScreen
                        present(controller, animated: true, completion: nil)
    }
    
    
    
    // change wishlist Logo
    @IBAction func wishList(_ sender: Any) {
        if cek == false {
            cek = true
            wishList.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            wishList.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
}
