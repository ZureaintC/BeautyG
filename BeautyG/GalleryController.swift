//
//  GalleryController.swift
//  BeautyG
//
//  Created by 付晨 on 16/8/3.
//  Copyright © 2016年 付晨. All rights reserved.
//

import UIKit
import Social
class GalleryController: UIViewController {
    var imageName: String?
    @IBOutlet weak var beautyG: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let imageName = imageName{
            beautyG.image = UIImage(named: imageName)
            switch imageName {
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "zhouxun":
                navigationItem.title = "周迅"
            case "yangmi":
                navigationItem.title = "杨幂"
            default:
                navigationItem.title = "画廊"
            }
        }
        
    }
    

    @IBAction func share(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("一起来玩画廊")
        controller.addImage(beautyG.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
