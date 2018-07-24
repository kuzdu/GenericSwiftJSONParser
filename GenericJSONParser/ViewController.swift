//
//  ViewController.swift
//  GenericJSONParser
//
//  Created by Michael Rothkegel on 24.07.18.
//  Copyright © 2018 Michael Rothkegel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        APIService.instance.getUser(completion: { (userHolder) in
            let debug = userHolder
        }) { (error) in
            print(error?.localizedDescription)
        }

    }
}

