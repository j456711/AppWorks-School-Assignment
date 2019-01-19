//
//  ViewController.swift
//  TreeHouse
//
//  Created by 渡邊君 on 2019/1/17.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var assignmentLabel: UILabel!
    
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    let assignmentProvider = AssignmentProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factProvider.randomFact()
        
    }

    @IBAction func ShowFact() {
        funFactLabel.text = factProvider.randomFact()
        assignmentLabel.text = assignmentProvider.randomAssignment()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    
}

