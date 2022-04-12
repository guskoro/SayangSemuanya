//
//  ViewController.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 31/03/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    @IBOutlet weak var shapeTableView: UITableView!
    @IBOutlet weak var foodTableView: UITableView!
    
    var merchantList = [Merchant]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initList()
    }
    
    func initList(){
        let sate = Merchant(id: "0", name: "Sate Kelopo Ondomohen", imageName: "sate")
        merchantList.append(sate)
        let soto = Merchant(id: "1", name: "Soto H. Syafiq", imageName: "soto")
        merchantList.append(soto)
        let tahutek = Merchant(id: "3", name: "Tahu Tek Pak Jayen", imageName: "tahutek")
        merchantList.append(tahutek)
        let soto2 = Merchant(id: "4", name: "Soto", imageName: "soto")
        merchantList.append(soto2)
        let sate3 = Merchant(id: "5", name: "Sate", imageName: "sate")
        merchantList.append(sate3)
        let soto3 = Merchant(id: "6", name: "Soto", imageName: "soto")
        merchantList.append(soto3)
        let sate4 = Merchant(id: "7", name: "Sate", imageName: "sate2")
        merchantList.append(sate4)
        let soto4 = Merchant(id: "8", name: "Soto", imageName: "soto")
        merchantList.append(soto4)
        let sate5 = Merchant(id: "9", name: "Sate", imageName: "sate2")
        merchantList.append(sate5)
        let soto5 = Merchant(id: "10", name: "Soto", imageName: "soto")
        merchantList.append(soto5)
        let sate6 = Merchant(id: "11", name: "Sate", imageName: "sate2")
        merchantList.append(sate6)
        let soto6 = Merchant(id: "12", name: "Soto", imageName: "soto")
        merchantList.append(soto6)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return merchantList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! TableViewCell
        
        let thisMerchant = merchantList[indexPath.row]
        
        tableViewCell.shopName.text = thisMerchant.name
        tableViewCell.shopImage.image = UIImage(named: thisMerchant.imageName)
        
        return tableViewCell
    }
    
    //TableViewController sending Segue to TableViewDetail
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detailSegue"){
            let indexPath = self.foodTableView.indexPathForSelectedRow!
            let tableViewDetail = segue.destination as? TableViewDetail
            let selectedMerchant = merchantList[indexPath.row]
            tableViewDetail!.selectedMerchant = selectedMerchant
            self.foodTableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

