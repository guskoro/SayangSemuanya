//
//  Onboarding2ViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 09/04/22.
//

import UIKit

class Onboarding2ViewController: UIViewController {
    
    var cekVegan : Bool = false
    var cekNotVegan : Bool = false
    @IBOutlet var userName: UILabel!
    
    let retrieve = Onboarding1ViewController.userDF.object(forKey: "name")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getValue()
        // Do any additional setup after loading the view.
    }
    
    func getValue() {
        if let bringData = retrieve as? String{
            userName.text = bringData
        }
    }
    
    @IBAction func veganClicked(_ sender: UIButton) {
        if cekVegan == false {
            cekVegan = true
            sender.backgroundColor = .blue
            sender.tintColor = .white
        } else {
            cekVegan = false
            sender.backgroundColor = .clear
            sender.tintColor = .blue
        }
    }
    
    
    
    @IBAction func notVeganClicked(_ sender: UIButton) {
        if cekNotVegan == false {
            cekNotVegan = true
            sender.backgroundColor = .blue
            sender.tintColor = .white
        } else {
            cekNotVegan = false
            sender.backgroundColor = .clear
            sender.tintColor = .blue
        }
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let controller = storyboard? .instantiateViewController(identifier: "intolerantNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        
        present(controller, animated: true, completion: nil)
    }
    
}
