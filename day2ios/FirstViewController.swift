//
//  ViewController.swift
//  day2ios
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn
        {
            result.text = "On"
        }
        else{
            result.text = "Off"
        }
    }
    
    
    @IBOutlet weak var result: UILabel!
    

    
    @IBAction func alert(_ sender: UIButton)
    {
       //self.showAction()
        //self.showAlert()
        self.showInputAlert()
    }
    
    func showAlert()
    {
        var alert = UIAlertController(title: "Alert", message: "How are You?", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        let actionDestructive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestructive)
        self.present(alert, animated: true)
    }
    
    func showAction()
    {
        var alert = UIAlertController(title: "Alert", message: "How are You?", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        let actionDestructive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestructive)
        self.present(alert, animated: true)
    }
    
    //user alert type for  input fields
    func showInputAlert()
    {
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addTextField(configurationHandler: { textField in
            textField.isSecureTextEntry = true
            textField.placeholder = "Input your password here..."
        })
            
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
            if let name = alert.textFields?[1].text {
                print("Your password: \(name)")}
            
        }))
        
        self.present(alert, animated: true)
    }
}




