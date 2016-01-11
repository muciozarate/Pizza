//
//  ConfirmacionViewController.swift
//  Pizza
//
//  Created by Mucio Zarate on 1/10/16.
//  Copyright © 2016 Innovabits. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    var tabBarItem1: UITabBarItem = UITabBarItem()
    var tabBarItem2: UITabBarItem = UITabBarItem()
    var tabBarItem3: UITabBarItem = UITabBarItem()
    var tabBarItem4: UITabBarItem = UITabBarItem()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var outletTamano: UITextField!
    
    
    @IBOutlet weak var outletMasa: UITextField!
    
    
    @IBOutlet weak var outletQueso: UITextField!
    
    
    
    @IBOutlet weak var outletIngredientes: UITextView!
    
    @IBAction func Confirmar(sender: AnyObject) {
        tabBarItem1.enabled  = false
        tabBarItem2.enabled  = false
        tabBarItem3.enabled  = false
        tabBarItem4.enabled  = false
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    if PizzaVariables.Tamaño > -1 && PizzaVariables.Masa > -1 && PizzaVariables.Queso > -1 {
    tabBarItemConfirmacion.enabled = true
    }
    */
    override func viewWillAppear(animated: Bool) {
        
   
        switch PizzaVariables.Tamaño {
            case 0:
                outletTamano.text = "Chica"
            case 1:
                outletTamano.text = "Mediana"
            case 2:
                outletTamano.text = "Grande"
            default:
                outletTamano.text = ""
        }

        switch PizzaVariables.Masa {
        case 0:
            outletMasa.text = "Delagada"
        case 1:
            outletMasa.text = "Crujiente"
        case 2:
            outletMasa.text = "Gruesa"
        default:
            outletMasa.text = ""
        }
        
        switch PizzaVariables.Queso {
        case 0:
            outletQueso.text = "Mozarela"
        case 1:
            outletQueso.text = "Cheddar"
        case 2:
            outletQueso.text = "Parmesano"
        case 3:
            outletQueso.text = "Sin queso"
        default:
            outletQueso.text = ""
        }
        
        
        let tabBarControllerItems = self.tabBarController?.tabBar.items
        
        if let arrayOfTabBarItems = tabBarControllerItems as! AnyObject as? NSArray{
            
            tabBarItem1 = arrayOfTabBarItems[0] as! UITabBarItem
            tabBarItem2 = arrayOfTabBarItems[1] as! UITabBarItem
            tabBarItem3 = arrayOfTabBarItems[2] as! UITabBarItem
            tabBarItem4 = arrayOfTabBarItems[3] as! UITabBarItem
            
        }
        
    }

}
