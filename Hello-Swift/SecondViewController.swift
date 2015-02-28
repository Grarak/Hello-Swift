//
//  SecondViewController.swift
//  Hello-Swift
//
//  Created by Willi Ye on 28.02.15.
//  Copyright (c) 2015 Willi Ye. All rights reserved.
//

import UIKit

protocol OnDataApplied {
    func onApplied(data:NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet var textField: UITextField! = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var delegate:OnDataApplied? = nil
    
    @IBAction func onApply(sender: AnyObject) {
        if delegate != nil {
            let data: NSString = textField.text
            delegate!.onApplied(data)
            self.navigationController!.popViewControllerAnimated(true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
