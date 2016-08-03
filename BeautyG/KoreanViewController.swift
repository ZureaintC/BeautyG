//
//  KoreanViewController.swift
//  BeautyG
//
//  Created by 付晨 on 16/8/3.
//  Copyright © 2016年 付晨. All rights reserved.
//

import UIKit
import Social
class KoreanViewController: UIViewController {
  
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func twitter(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩画廊")
        controller.addImage(image.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func facebook(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩画廊")
        controller.addImage(image.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func weibo(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("一起来玩画廊")
        controller.addImage(image.image)
        self.presentViewController(controller, animated: true, completion: nil)

    }
}