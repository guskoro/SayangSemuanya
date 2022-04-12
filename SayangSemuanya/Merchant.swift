//
//  Shape.swift
//  SayangSemuanya
//
//  Created by Guskoro Pradipta on 11/04/22.
//

import Foundation

class Merchant {
    var id : String!
    var name : String!
//    var detail : String!
    var imageName : String!
    
    public init(id:String, name:String, imageName:String)
    {
        self.id = id
        self.name = name
//        self.detail = detail
        self.imageName = imageName
    }
}
