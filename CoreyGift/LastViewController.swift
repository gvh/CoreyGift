//
//  LastViewController.swift
//  CoreyGift
//
//  Created by Gardner von Holt on 12/25/21.
//  Copyright © 2021 Gardner von Holt. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doStartOver(_ sender: Any) {
        performSegue(withIdentifier: "doStartOver", sender: self)
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
