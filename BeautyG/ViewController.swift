//
//  ViewController.swift
//  BeautyG
//
//  Created by 付晨 on 16/8/3.
//  Copyright © 2016年 付晨. All rights reserved.
//

import UIKit
import Social
class ViewController: UIViewController {
    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["杨幂","李冰冰","王菲","周迅","范冰冰"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPicker.selectedRowInComponent(0)
            var imageName: String?
            switch index {
            case 0 :
                imageName = "yangmi"
            case 1 :
                imageName = "libingbing"
            case 2 :
                imageName = "wangfei"
            case 3 :
                imageName = "zhouxun"
            case 4 :
                imageName = "fanbingbing"
            default:
                imageName = nil
            }
            var vc = segue.destinationViewController as! GalleryController
            vc.imageName = imageName
        }
    }

    @IBAction func close(segue: UIStoryboardSegue){
        
    }

}

