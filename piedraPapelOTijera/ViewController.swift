//
//  ViewController.swift
//  piedraPapelOTijera
//
//  Created by Pedro Antonio Vazquez Rodriguez on 14/10/17.
//  Copyright © 2017 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var nombreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pasarNombre" {
            let destino = segue.destination as! SegundoViewController
            
            destino.nombre = nombreTextField.text!
            
        }
    }
    
    @IBAction func nombreTextField(_ sender: UITextField) {
        self.resignFirstResponder()
    }
    


  
}

