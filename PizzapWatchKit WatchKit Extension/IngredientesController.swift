//
//  IngredientesController.swift
//  PizzapWatchKit
//
//  Created by Antonio Rodríguez on 18/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    var pizza : Pizza!;
    
    
    
    var cebollaValue :Bool = true
    var aceitunaValue :Bool = true
    var salchichaValue :Bool = true
    var pavoValue :Bool = true
    var peperoniValue :Bool = true
    var jamonValue :Bool = true
    

    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var jamon: WKInterfaceSwitch!
    
    @IBAction func cebollaChanged(value: Bool) {
        cebollaValue = value
    }
    @IBAction func aceitunaChanged(value: Bool) {
        aceitunaValue = value
    }
    @IBAction func salchichaChanged(value: Bool) {
        salchichaValue = value
    }
    @IBAction func pavoChanged(value: Bool) {
        pavoValue = value
    }
    
    
    @IBAction func peperoniChanged(value: Bool) {
        peperoniValue = value
    }
    
    
    @IBAction func valueChanged(value: Bool) {
        jamonValue = value
    }
    
    
    @IBAction func continuar() {
        var ingredientes: [String] = []
        
        if jamonValue{
            ingredientes.append("Jamon")
        }
        if peperoniValue{
            ingredientes.append("Peperoni")
        }
        if pavoValue{
            ingredientes.append("Pavo")
        }
        if salchichaValue{
            ingredientes.append("Salchicha")
        }
        if aceitunaValue{
            ingredientes.append("Aceituna")
        }
        if cebollaValue{
            ingredientes.append("Cebolla")
        }
        if(ingredientes.count < 1 || ingredientes.count > 5){
            let h0 = { print("ok")}
            let action1 = WKAlertAction(title: "Aceptar", style: .Default, handler:h0)
            presentAlertControllerWithTitle("Seleccione entre 1 y 5 ingredietnes", message: "", preferredStyle: .ActionSheet, actions: [action1])

        }else{
            pizza.ingredientes = ingredientes
             pushControllerWithName("Confirmacion", context: pizza)
        }
        
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
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
