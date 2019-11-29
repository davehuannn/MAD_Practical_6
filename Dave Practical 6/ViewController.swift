//
//  ViewController.swift
//  Dave Practical 6
//
//  Created by MAD2_P03 on 28/11/19.
//  Copyright © 2019 Dave Huan. All rights reserved.
//

import UIKit
import QRCoder

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputURL: UITextField!
    @IBOutlet weak var qrImage: UIImageView!
    var inputtedURL: URL!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputURL.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // whenever the this code runs when anything is enter in the textview
        inputtedURL = URL(fileURLWithPath: inputURL.text!)
        let generator = QRCodeGenerator()
        //Default correction level is M
        generator.correctionLevel = .H
        qrImage.image = generator.createImage(url: inputtedURL, size: CGSize(width: 200,height: 200))
        return true
    }


}

