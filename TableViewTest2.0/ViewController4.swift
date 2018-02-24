//
//  ViewController.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 30/12/17.
//  Copyright © 2017 Passion for Creation. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
  
    @IBOutlet weak var Texte2: UILabel!
    @IBOutlet weak var Image2: UIImageView!
    @IBOutlet weak var Titre2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Titre2.text = artiste2[myIndex2]
        Texte2.text = artisteDesc2[myIndex2]
        Image2.image = UIImage(named: artiste2[myIndex2] + ".jpg")
        
    }
    
    @IBAction func BoutonPartage(_ sender: Any) {
        let ActivityController = UIActivityViewController(activityItems:[Titre2.text!, #imageLiteral(resourceName: "iconeD.jpg")],applicationActivities: nil)
        present(ActivityController, animated:true,completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


