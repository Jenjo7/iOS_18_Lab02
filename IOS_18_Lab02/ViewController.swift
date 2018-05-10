//
//  ViewController.swift
//  IOS_18_Lab02
//
//  Created by Gianni Savini on 10/05/18.
//  Copyright © 2018 Gianni Savini. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    var cont : Int = 0

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt.resignFirstResponder() // toglie l'autofocus
        return true
    }
    
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var btn: UIButton!//referena all 'oggetto
    @IBOutlet weak var lbl: UILabel!//collegare con mouse + CTRL
    
    
    
    //referenza al'azione,
    @IBAction func touchbtn(_ sender: Any) {
        cont += 1
        lbl.text = cont.description
        //I modi sottostanti fanno la stessa cosa, con sintassi diversa
        lbl.text = String(format: "%d", cont)//Creo una nuova stringa con formato di visualizzazione; il %@ è il formto di  una stringa
        lbl.text = "\(cont)"//creo un stringa, e gli butto dentro il valore del cont.
        view.endEditing(true)//andiamo a rimuovere il focus da tutti i textfields.
        
    }
    
}

