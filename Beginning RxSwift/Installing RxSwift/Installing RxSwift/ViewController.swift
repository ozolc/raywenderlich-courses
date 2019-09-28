//
//  ViewController.swift
//  Installing RxSwift
//
//  Created by Maksim Nosov on 28/09/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _ = Observable.of("Hello RxSwift!")
    }


}

