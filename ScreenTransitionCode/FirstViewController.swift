//
//  FirstViewController.swift
//  
//
//  Created by hirosawak on 2015/06/26.
//
//

import UIKit

class FirstViewController: UIViewController {
    
    // ボタンを用意
    var addBtn: UIBarButtonItem!
    
    init() {
        super.init(nibName: nil, bundle: nil)
        // Viewの背景色をCyanに設定する.
        self.view.backgroundColor = UIColor.blueColor()
        //tabBarItemのアイコンをFeaturedに、タグを1と定義する.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.TopRated, tag: 1)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "A-Display"
        
        // addBtnを設置
        addBtn = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onClick")
        self.navigationItem.rightBarButtonItem = addBtn

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
        let third = ThirdViewController()
        self.navigationController?.pushViewController(third, animated: true)
    }
}