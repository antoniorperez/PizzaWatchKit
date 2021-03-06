//
//  InterfaceController.swift
//  PizzapWatchKit WatchKit Extension
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let tamaños = ["Chica", "Mediana", "Grande"]
    
    var pickerVal : String = "Chica"

    @IBOutlet var picker: WKInterfacePicker!
    

    @IBAction func continuar() {
        let p = Pizza()
        p.tamaño = pickerVal
        pushControllerWithName("MasaController", context: p)
    }
    
    @IBAction func pickerChanged(value: Int) {
        pickerVal = tamaños[value]
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var pickerItems = [WKPickerItem]()
        for index  in 0...tamaños.count-1{
            let pickerItem = WKPickerItem()
            pickerItem.title = tamaños[index]
            pickerItem.caption = tamaños[index]
            pickerItems.append(pickerItem)
            
        }
        picker.setItems(pickerItems)
    }
    
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    

}
