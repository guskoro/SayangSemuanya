//
//  Onboarding1ViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 09/04/22.
//

import UIKit

class Onboarding1ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    
    static let userDF = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    // next page button
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        let inputValue = userName.text
        
        if let valueExist = inputValue.self {
            Onboarding1ViewController.userDF.set(inputValue, forKey: "name")
            print(Onboarding1ViewController.userDF.dictionaryRepresentation())
            let controller = storyboard? .instantiateViewController(identifier: "VeganNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            
            present(controller, animated: true, completion: nil)
        }
        else {
            print("masukkan dulu")
        }
    }

}
