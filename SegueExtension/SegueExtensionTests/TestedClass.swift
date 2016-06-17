//
//  TestedClass.swift
//  SegueExtension
//
//  Created by matyushenko on 17.06.16.
//  Copyright © 2016 matyushenko. All rights reserved.
//

import Foundation
import UIKit

class TestedViewController: UIViewController {
    var result: String?
    weak var segue: UIStoryboardSegue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did Load")
    }
    
    func testedMethod() {
        print(self.valueForKey("storyboardSegueTemplates"))
        self.performSegueWithIdentifierSE("TestSegueID", sender: "SomeSender") { segue, sender in
            self.result = "Ok"
        }
    }
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}