//
//  ChatVC.swift
//  Smack App
//
//  Created by Michael Hoffman on 3/20/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //"Target" is the current view controller (i.e. "self")
        //"Action" is a selector (meaning a func to be called) from the SWReveal supporting file... right-click on revealToggle to read its definition
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
