//
//  ConfirmacionController.swift
//  PizzapWatchKit
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionController: WKInterfaceController {

    @IBOutlet var resumen: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let pizza = context as! Pizza
        let mensaje = "Tamaño: \(pizza.tamaño), Masa: \(pizza.masa), Queso:\(pizza.queso), Ingredientes:\(pizza.ingredientes)"
        resumen.setText(mensaje)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func confirmar() {
            let h0 = { print("ok")}
            let action1 = WKAlertAction(title: "Ok", style: .Default, handler:h0)
            presentAlertControllerWithTitle("Pedido realizado!", message: "", preferredStyle: .ActionSheet, actions: [action1])

        
    }
}
