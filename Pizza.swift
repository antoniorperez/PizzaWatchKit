//
//  Pizza.swift
//  PizzapWatchKit
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamaño : String
    var masa : String
    var queso : String
    var ingredientes : [String]
    
    override init(){
        tamaño = ""
        masa = ""
        queso = ""
        ingredientes = [String]()
    }
    

}
