//
//  ViewController.swift
//  Hello-Swift
//
//  Created by Willi Ye on 28.02.15.
//  Copyright (c) 2015 Willi Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OnDataApplied {
    
    @IBOutlet var dataLabel: UILabel! = UILabel()
    
    func onApplied(data: NSString) {
        dataLabel.text = data;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = "test"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "secondSegue" {
            let secondVC:SecondViewController = segue.destinationViewController as SecondViewController
            secondVC.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

