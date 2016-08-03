//
//  File.swift
//  BeautyG
//
//  Created by 付晨 on 16/8/3.
//  Copyright © 2016年 付晨. All rights reserved.
//

import UIKit

extension ViewController: UIPickerViewDataSource{

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
    }

}
extension ViewController:UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }

}