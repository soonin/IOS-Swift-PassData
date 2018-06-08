//
//  SecondViewController.swift
//  IOS-Swift-PassData
//
//  Created by Pooya on 2018-05-28.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondlable: UILabel!

    var stringPassedHome : Int = 0
    var stringPassedSecond : String = ""
    var stringPassedThird : [String] = []

    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var mainP2Val: UITextField!
    @IBOutlet weak var secondP2Val: UITextField!
    @IBOutlet weak var thirdP2Val: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(stringPassedHome)
        print(stringPassedSecond)
        print(stringPassedThird.description)
        self.mainP2Val!.text = String(stringPassedHome)
        self.secondP2Val!.text = stringPassedSecond
        self.thirdP2Val!.text = stringPassedThird.joined(separator: " ")
        
        let image = UIImage(named: "colorfull01S")
        pageTitle.textColor = UIColor(patternImage: image!)

    }
    
    @IBAction func goToHome(_ sender: UIBarButtonItem) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "Main") as! ViewController
        myVC.stringPassedHome = Int(self.mainP2Val.text!)!
        myVC.stringPassedSecond = self.secondP2Val.text!
        myVC.stringPassedThird = self.thirdP2Val.text!.split(regex: " ")
        self.present(myVC, animated: true , completion: nil)

    }
    
    @IBAction func goToThird(_ sender: Any) {
        let myVC3 = storyboard?.instantiateViewController(withIdentifier: "Third") as! ThirdViewController
        myVC3.stringPassedHome = Int(self.mainP2Val.text!)!
        myVC3.stringPassedSecond = self.secondP2Val.text!
        myVC3.stringPassedThird = self.thirdP2Val.text!.split(regex: " ")
        self.present(myVC3, animated: true , completion: nil)
    }
    
    
    
}
