//
//  ViewController.swift
//  TDD
//
//  Created by Чистяков Василий Александрович on 10.08.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func charectersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }

}

