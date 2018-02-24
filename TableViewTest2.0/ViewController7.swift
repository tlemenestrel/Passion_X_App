//
//  ViewController7.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 21/02/18.
//  Copyright © 2018 Passion for Creation. All rights reserved.
//

import UIKit

class ViewController7: UIViewController {
    
   
    @IBOutlet weak var Image3: UIImageView!
    @IBOutlet weak var Titre3: UILabel!
    @IBOutlet weak var Texte3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Titre3.text = artiste[myIndex]
        Texte3.text = artisteDesc[myIndex]
        Image3.image = UIImage(named: artiste[myIndex] + ".jpg")
        
    }
    @IBAction func BoutonPartage(_ sender: Any) {
        let ActivityController = UIActivityViewController(activityItems:[Titre3.text!, #imageLiteral(resourceName: "iconeD.jpg")],applicationActivities: nil)
        present(ActivityController, animated:true,completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

