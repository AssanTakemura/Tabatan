//
//  TimerViewController.swift
//  Tabatan3
//
//  Created by 竹村明日香 on 2020/11/27.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var seLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
