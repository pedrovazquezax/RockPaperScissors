//
//  SegundoViewController.swift
//  piedraPapelOTijera
//
//  Created by Pedro Antonio Vazquez Rodriguez on 14/10/17.
//  Copyright © 2017 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {

    @IBOutlet weak var maquinaBtn: UIButton!
    @IBOutlet weak var maquinaLbl: UILabel!
    @IBOutlet weak var personaLbl: UILabel!
    
    var counterMaquina = 0
    var counterPersona = 0
    let imagenes = [" ","👊🏻","🖐🏻","✌🏻","🦎","🖖🏻"]
    
    @IBAction func jugada(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(5)+1)
        var tituloalerta = ""
        
        if movJugador == movMaquina {
            maquinaBtn.setTitle(sender.titleLabel?.text, for: .normal)
            tituloalerta = "Empate"
            
        }
        else{
            switch movJugador{
            case 1:
                if movMaquina == 2 || movMaquina == 5{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 2:
                if movMaquina == 3 || movMaquina == 4{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 3:
                if movMaquina == 1 || movMaquina == 5{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 4:
                if movMaquina == 1 || movMaquina == 3{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                }
                break
            case 5:
                if movMaquina == 2 || movMaquina == 4{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1
                }else{
                    maquinaBtn.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                }
                break
            default :
                
                break
            }
        }
        let alertcontroller = UIAlertController(title: tituloalerta, message: "" , preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertcontroller.addAction(action)
        self.present(alertcontroller, animated: true, completion: nil)
        maquinaLbl.text = "Score Maquina: \(counterMaquina)"
        personaLbl.text = "Score Persona \(counterPersona)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
