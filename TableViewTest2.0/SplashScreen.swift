//
//  SplashScreen.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 12/01/18.
//  Copyright © 2018 Passion for Creation. All rights reserved.
//

import UIKit

class SplashScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(SplashScreen.showNavController), with: nil, afterDelay: 2.5)
        // Do any additional setup after loading the view.
    }
    @objc func showNavController()
   {
    performSegue(withIdentifier: "segue3", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
