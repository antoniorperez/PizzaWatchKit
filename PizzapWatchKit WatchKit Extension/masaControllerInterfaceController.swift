//
//  masaControllerInterfaceController.swift
//  PizzapWatchKit
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit
import Foundation


class masaControllerInterfaceController: WKInterfaceController {

    let masas = ["Delgada", "Crujiente", "Gruesa"]
    
    var pickerVal : String = "Delgada"
    
    var pizza : Pizza?

    
    @IBOutlet var picker: WKInterfacePicker!
    

    @IBAction func pickerChanged(value: Int) {
        pickerVal = masas[value]

    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let p = context as! Pizza
        pizza = p
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var pickerItems = [WKPickerItem]()
        for index  in 0...masas.count-1{
            let pickerItem = WKPickerItem()
            pickerItem.title = masas[index]
            pickerItem.caption = masas[index]
            pickerItems.append(pickerItem)
            
        }
        picker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func continuar() {
        pizza!.masa = pickerVal
        pushControllerWithName("Queso", context: pizza)
        
    }
}
