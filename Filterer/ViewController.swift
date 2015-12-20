//
//  ViewController.swift
//  Filterer
//
//  Created by Lawrence Chou on 12/14/15.
//  Copyright © 2015 ChouYuTa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView01: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lady = imageProcessor(file_name: "sample.png")
//        lady.pUIImage
        lady.pRGBAImage
        lady.brightness(multipleBy: 0.5).applyRedFilter(scale: 1.2)
        lady.applyRedFilter(scale: 1.2)
//        lady.pUIImage
        imageView01.image = lady.pUIImage
        
        lady.applyDefaultFilter(filterNameEnum: .Red)
        
        
        var ladyS = imageProcessorS(file_name: "sample.png")
//        ladyS.pUIImageS
        ladyS.pRGBAImageS
        ladyS.applySampleFilter(scale: 0.5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

