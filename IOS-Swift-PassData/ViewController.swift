//
//  ViewController.swift
//  IOS-Swift-PassData
//
//  Created by Pooya on 2018-05-28.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PageTitle: UILabel!
    @IBOutlet weak var mainPVal: UITextField!
    @IBOutlet weak var secondPVal: UITextField!
    @IBOutlet weak var thirdPVal: UITextField!
    
    var stringPassedHome : Int = 0
    var stringPassedSecond : String = ""
    var stringPassedThird : [String] = []

    @IBOutlet weak var firstLable: UILabel!
    var stringPassBack = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(stringPassedHome)
        print(stringPassedSecond)
        print(stringPassedThird.description)
        self.mainPVal!.text = String(stringPassedHome)
        self.secondPVal!.text = stringPassedSecond
        self.thirdPVal!.text = stringPassedThird.joined(separator: " ")

        let image = UIImage(named: "colorfullS")
        PageTitle.textColor = UIColor(patternImage: image!)
    }


//    @IBAction func nextAct(_ sender: UIButton) {
//
//        let myVC = storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
//        myVC.stringPassedSecond = "Pass me to next " //self.firstLable.text!
//        //navigationController?.pushViewController(myVC, animated: true)
//        self.present(myVC, animated: true , completion: nil)
//
//
//    }
    
    
    @IBAction func goToSecond(_ sender: UIBarButtonItem) {
        let myVC2 = storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        myVC2.stringPassedHome = Int(self.mainPVal.text!)!
        myVC2.stringPassedSecond = self.secondPVal.text!
        myVC2.stringPassedThird = self.thirdPVal.text!.split(regex: " ")
        self.present(myVC2, animated: true , completion: nil)
    }
    
    
    @IBAction func goToThird(_ sender: Any) {
        let myVC3 = storyboard?.instantiateViewController(withIdentifier: "Third") as! ThirdViewController
        myVC3.stringPassedHome = Int(self.mainPVal.text!)!
        myVC3.stringPassedSecond = self.secondPVal.text!
        myVC3.stringPassedThird = self.thirdPVal.text!.split(regex: " ")
        self.present(myVC3, animated: true , completion: nil)
    }
    
    
}

