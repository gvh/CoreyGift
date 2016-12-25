//
//  ViewController.swift
//  CoreyGift
//
//  Created by Gardner von Holt on 2016/Dec/25.
//  Copyright © 2016 Gardner von Holt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var giveTo:String?
    @IBOutlet weak var textGiveTo: UITextField!
    @IBOutlet weak var labelGiveTo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if giveTo != nil {
            labelGiveTo.text = giveTo
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier != nil && segue.identifier == "DisplaySegue" {
            (segue.destination as! ViewController).giveTo = textGiveTo.text
        }
    }
}

