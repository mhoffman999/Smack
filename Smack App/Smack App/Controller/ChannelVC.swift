//
//  ChannelVC.swift
//  Smack App
//
//  Created by Michael Hoffman on 3/20/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Customizing rear view reveal width
        //The larger the number, the more screen is revealed
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60
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
