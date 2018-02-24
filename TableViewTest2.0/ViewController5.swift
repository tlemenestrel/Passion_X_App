//
//  ViewController5.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 21/02/18.
//  Copyright © 2018 Passion for Creation. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     @IBAction func BoutonPartage(_ sender: Any) {
        let activityController = UIActivityViewController(activityItems: ["Tu as gagné"] , applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        self.present(activityController, animated: true, completion: nil)
        
    }
    
}
