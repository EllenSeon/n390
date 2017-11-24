//
//  ViewController.swift
//  HelloiPhone
//
//  Created by ELLEN SEON on 2017. 11. 24..
//  Copyright © 2017년 EllenSeonStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        thisLabel.text = "Hello iPhone"
    }

}

