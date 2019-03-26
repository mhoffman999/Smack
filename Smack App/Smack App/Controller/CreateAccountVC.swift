//
//  CreateAccountVC.swift
//  Smack App
//
//  Created by Michael Hoffman on 3/24/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    



}
