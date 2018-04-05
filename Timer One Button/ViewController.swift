//
//  ViewController.swift
//  Timer One Button
//
//  Created by D7703_26 on 2018. 4. 5..
//  Copyright © 2018년 조영진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var check = true
    var counter = 1
    var timer = Timer()
    var Ani = false
    

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = String(counter)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttons(_ sender: Any) {
        if Ani == false {
            timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
            
           Ani = true
        } else {
            timer.invalidate()
            Ani = false
        }
    }
    
    @objc func doAnimation() {
        if counter == 5 {
            check = false
            counter = counter - 1
        } else if counter == 1 {
            check = true
            counter = counter + 1
        } else if check == false {
            counter = counter - 1
        } else if check == true {
            counter = counter + 1
        }
        imageView.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

