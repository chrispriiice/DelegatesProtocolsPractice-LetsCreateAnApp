//
//  SecondViewController.swift
//  DelegatesProtocolsPractice-LetsCreateAnApp
//
//  Created by Chris Price on 1/16/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//

import UIKit

protocol PassDataBack {
    func passData(string: String)
}

class SecondViewController: UIViewController {

    var data = ""
    var delegate: PassDataBack!
    
    @IBOutlet weak var newTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newTextField.text = data 

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        delegate.passData(string: newTextField.text!)
        navigationController?.popViewController(animated: true)
    }
    

}
