//
//  ViewController.swift
//  TemplateImageDemo
//
//  Created by Joel Martinez on 1/6/19.
//  Copyright © 2019 JOELESLI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var templateImages : [UIImageView]?
    @IBOutlet weak var image: UIImageView!
    
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        index = templateImages!.count
        changeColor(UIButton())
    }

    @IBAction func changeColor(_ sender: UIButton) {
        
        index += 1
        
        if let i = templateImages?.count, index >= i {
            index = 0
        }
        
        image.tintColor = templateImages?[index].tintColor ?? image.tintColor
        
    }
    
}

// code from https://stackoverflow.com/questions/41121425/uiimageview-doesnt-always-tint-template-image
extension UIImageView {
    override open func awakeFromNib() {
        super.awakeFromNib()
        tintColorDidChange()
    }
}

