//
//  ViewController.swift
//  swift.sample10
//
//  Created by 水野祥子 on 2017/04/29.
//  Copyright © 2017年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let filePath = Bundle.main.path(forResource: "sample", ofType: "txt"){
            
            do {
                // ファイルの内容を取得する
                let content = try String(contentsOfFile: filePath)
                print("\(content)")
                
                
            } catch  {
                print("ファイルの内容取得時に失敗")
            }
            
            
        }else {
            print("指定されたファイルが見つかりません")
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

