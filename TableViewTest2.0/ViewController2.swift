//
//  ViewController2.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 8/01/18.
//  Copyright © 2018 Passion for Creation. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TextField.delegate = self
    }
    @IBOutlet weak var Réponse: UILabel!
    @IBAction func CodeBouton(_ sender: Any) {
        let LaVérité = TextField.text
        switch LaVérité {
        case "PFCX-EEFATMVC"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-YAKHZHQX"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-TULAHKBC"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-EKDKADGW"?: Réponse.text =  "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-NHLIRPYW"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-YHSTMUEX"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-COAGFFKS"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-UGZIZFBJ"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-RENKNJKL"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-LZVERXLT"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-GXDZCTUO"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-LACHWBSB"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-VMPPVIMN"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-TATGJMYP"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "PFCX-HFFSYHVW"?: Réponse.text = "Tu as gagné des boissons, bien ouej Michel. Tu auras ton lot le jour de Passion. Conserve bien ton ticket svp, c'est important"
        case "Prépuce"?: performSegue(withIdentifier: "segue2", sender: self)
        case "Une"?: performSegue(withIdentifier: "segue4", sender: self)
        case "Passion"?: performSegue(withIdentifier: "segue3", sender: self)
        case "Aim High"?: performSegue(withIdentifier: "segue5", sender: self)
        case "Couplidon"?: performSegue(withIdentifier: "segue7", sender: self)
        case "Lomepal"?: performSegue(withIdentifier: "segue8", sender : self)
        case "Aurélia"?: performSegue(withIdentifier: "segue9" , sender: self)
        case "N"?: performSegue(withIdentifier: "segue10", sender: self)
        default: Réponse.text = "Tu as perdu rachète un ticket mdr. Non je déconne garde bien ton ticket pour participer au tirage au sort pendant Passion"
            }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

