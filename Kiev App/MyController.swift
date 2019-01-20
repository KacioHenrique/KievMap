//
//  myControler.swift
//  Kiev App
//
//  Created by kacio henrique couto batista on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//
import UIKit
class MyController: UIViewController {
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    @IBOutlet weak var containerViewA: UIView!
    @IBOutlet weak var containerViewB: UIView!
    
    @IBAction func showComponent(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewA.alpha = 1
                self.containerViewB.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewA.alpha = 0
                self.containerViewB.alpha = 1
            })
        }
    }
    
}
