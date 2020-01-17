//
//  ViewController.swift
//  DelegatesProtocolsPractice-LetsCreateAnApp
//
//  Created by Chris Price on 1/16/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//


// Made from following along with the video from the Let's Create An App channel of youtube. Link: https://www.youtube.com/watch?v=tIrhzByaA14

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOneTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc!.data = textField.text!
        vc!.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ViewController: PassDataBack {
    func passData(string: String) {
        textField.text = string
    }
}
