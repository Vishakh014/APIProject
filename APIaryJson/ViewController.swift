//
//  ViewController.swift
//  APIaryJson
//
//  Created by Vishakh on 22/08/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let jsonManager = JsonManager()
            jsonManager.fetchData()
    }


}

