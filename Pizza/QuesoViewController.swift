//
//  QuesoViewController.swift
//  Pizza
//
//  Created by Mucio Zarate on 1/10/16.
//  Copyright © 2016 Innovabits. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    var tabBarItemConfirmacion: UITabBarItem = UITabBarItem()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var OutletQueso: UISegmentedControl!
    
    
    @IBAction func SeleccionaQueso(sender: AnyObject) {
         PizzaVariables.Queso = sender.selectedSegmentIndex
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(animated: Bool) {
        
        OutletQueso.selectedSegmentIndex = PizzaVariables.Queso
        
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
