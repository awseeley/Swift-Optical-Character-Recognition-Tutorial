//
//  ViewController.swift
//  SeemuOCR
//
//  Created by Andrew Seeley on 29/4/18.
//  Copyright © 2018 Seemu. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController, G8TesseractDelegate {

    let tesseract:G8Tesseract = G8Tesseract(language: "eng")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Running OCR")
        
        tesseract.delegate = self
        tesseract.charWhitelist = "0123456789"
        
        var imageToCheck = UIImage(named: "1")
        tesseract.image = imageToCheck
        tesseract.recognize()
        print("The 1 text is \(tesseract.recognizedText!)")
        
        imageToCheck = UIImage(named: "3")
        tesseract.image = imageToCheck
        tesseract.recognize()
        print("The 3 text is \(tesseract.recognizedText!)")
        
        imageToCheck = UIImage(named: "6")
        tesseract.image = imageToCheck
        tesseract.recognize()
        print("The 6 text is \(tesseract.recognizedText!)")
        
        imageToCheck = UIImage(named: "9")
        tesseract.image = imageToCheck
        tesseract.recognize()
        print("The 9 text is \(tesseract.recognizedText!)")
        
    }
    
    func shouldCancelImageRecognition(for tesseract: G8Tesseract!) -> Bool {
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

