//
//  SecondViewController.swift
//  ScreenTransitionCode
//
//  Created by hirosawak on 2015/06/26.
//  Copyright (c) 2015年 hirosawak. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        // Viewの背景色をCyanに設定する.
        self.view.backgroundColor = UIColor.brownColor()
        
        //tabBarItemのアイコンをFeaturedに、タグを1と定義する.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var btn : UIButton = UIButton()
        btn.frame = CGRect(x: (self.view.bounds.width-100 )/2,y: (self.view.bounds.height-50)/2,width: 100,height: 50)
        
        btn.setTitle("button", forState: UIControlState.Normal)
        btn.layer.masksToBounds = true
        self.view.addSubview(btn)
        btn.addTarget(self, action: "onClick", forControlEvents: .TouchUpInside)
        
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // addBtnをタップしたときのアクション
    func onClick() {
        let fourth = FourthViewController()
        // navigationControllerのrootViewControllerにsecondViewControllerをセット.
        let nav = UINavigationController(rootViewController: fourth)
        
        // 画面遷移.
        self.presentViewController(nav, animated: true, completion: nil)
    }

}