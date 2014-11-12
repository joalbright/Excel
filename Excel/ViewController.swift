//
//  ViewController.swift
//  Excel
//
//  Created by Jo Albright on 11/12/14.
//  Copyright (c) 2014 Jo Albright. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {

        tableView.delegate = self
        tableView.dataSource = self
        
        scrollView.contentSize = CGSizeMake(3000, scrollView.frame.height)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let w = 200
        let cols = 3000 / 200
        
        for i in 0..<cols {
            
            var box = UIView(frame: CGRectMake(CGFloat(i) * 200, 0, 200, 100))
            box.backgroundColor = UIColor(white: CGFloat(arc4random_uniform(100)) / 100, alpha: 1.0)
            cell.contentView.addSubview(box)
            
        }
        
        return cell
        
    }


}

