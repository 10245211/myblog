//
//  ViewController.swift
//  UIButtonDemo
//
//  Created by CZ on 11/8/16.
//  Copyright © 2016 projm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let codeBtn:UIButton = UIButton(type:.system)
        codeBtn.frame = CGRect(x:50, y:100, width:100, height:100)
        codeBtn.setTitle("CodeButton", for: .normal)
        codeBtn.addTarget(self, action: #selector(onCodeBtnClicked(sender:)), for:.touchDown)
        
        self.view.addSubview(codeBtn)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCodeBtnClicked(sender: UIButton)  {
        
    }


}

