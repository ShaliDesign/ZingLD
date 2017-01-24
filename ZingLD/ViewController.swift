//
//  ViewController.swift
//  ZingLD
//
//  Created by Linh&ShawnD on 2017-01-24.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     Logo!.alpha = 0
     Text!.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.Logo!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 4, animations: {
                self.Text!.center = CGPoint(x: self.Logo!.center.x, y: 500)
                self.Text!.alpha = 1
            })
        })
    }
}

