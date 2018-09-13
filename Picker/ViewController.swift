//
//  ViewController.swift
//  Picker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgfoto: UIImageView!
    let colores = ["Rojo", "Naranja", "Amarillo", "Verde", "Azul", "Morado"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colores.count
        
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->String? {
        return colores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            view.backgroundColor = UIColor.red
            imgfoto.image = UIImage(named: "rojo")
        case 1 :
            view.backgroundColor = UIColor.orange
            imgfoto.image = UIImage(named: "naranja")
        case 2 :
            view.backgroundColor = UIColor.yellow
            imgfoto.image = UIImage(named: "amarillo")
        case 3 :
            view.backgroundColor = UIColor.green
            imgfoto.image = UIImage(named: "verde")
        case 4 :
            view.backgroundColor = UIColor.blue
            imgfoto.image = UIImage(named: "azul")
        case 5 :
            view.backgroundColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            imgfoto.image = UIImage(named: "morado")
        
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
        imgfoto.image = UIImage(named: "rojo")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

