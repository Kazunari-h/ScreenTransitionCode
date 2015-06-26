//
//  FourthViewController.swift
//  ScreenTransitionCode
//
//  Created by hirosawak on 2015/06/26.
//  Copyright (c) 2015年 hirosawak. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.greenColor()
        
        let myBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: "onClickBarButton:")
        
        
        // NavigationBarを取得する.
        self.navigationController?.navigationBar
        
        // NavigationBarの表示する.
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        // NavigationItemの取得する.
        self.navigationItem
                
        // Barの左側に配置する.
        self.navigationItem.setLeftBarButtonItem(myBarButton, animated: true)
        
        self.title = "B'-Display"
    }
    
    func onClickBarButton(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}