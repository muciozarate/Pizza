//
//  FirstViewController.swift
//  Pizza
//
//  Created by Mucio Zarate on 1/10/16.
//  Copyright © 2016 Innovabits. All rights reserved.
//

import UIKit

struct PizzaVariables {
    static var Tamaño = -1
    ;static var Masa = -1
    ;static var Queso = -1
    
}

class FirstViewController: UIViewController {

    var tabBarItemConfirmacion: UITabBarItem = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    @IBOutlet weak var OutletTamano: UISegmentedControl!
    
    @IBAction func SeleccionaOpcion(sender: AnyObject) {
    
        PizzaVariables.Tamaño = sender.selectedSegmentIndex
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        OutletTamano.selectedSegmentIndex = PizzaVariables.Tamaño
       
        let tabBarControllerItems = self.tabBarController?.tabBar.items
        
        if let arrayOfTabBarItems = tabBarControllerItems as! AnyObject as? NSArray{
            
            tabBarItemConfirmacion = arrayOfTabBarItems[4] as! UITabBarItem
            tabBarItemConfirmacion.enabled = false
        }
        
        
    }
    override func viewWillDisappear(animated: Bool) {
     
        if PizzaVariables.Tamaño > -1 && PizzaVariables.Masa > -1 && PizzaVariables.Queso > -1 {
        tabBarItemConfirmacion.enabled = true
        }
        
        
    }


}

