//
//  QuesoController.swift
//  PizzapWatchKit
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    
    let quesos = ["Mozarella", "Cheddar", "Parmesano", "Sin queso"]
    
    var pickerVal : String = "Mozarella"
    
    var pizza : Pizza?
    
    
    @IBAction func pickerChanged(value: Int) {
        pickerVal = quesos[value]
    }
    @IBOutlet var picker: WKInterfacePicker!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        let p = context as! Pizza
        pizza = p

        
        // Configure interface objects here.
    }

    @IBAction func continuar() {
        pizza!.queso = pickerVal
        pushControllerWithName("Ingredientes", context: pizza)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var pickerItems = [WKPickerItem]()
        for index  in 0...quesos.count-1{
            let pickerItem = WKPickerItem()
            pickerItem.title = quesos[index]
            pickerItem.caption = quesos[index]
            pickerItems.append(pickerItem)
        }
            picker.setItems(pickerItems)

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
