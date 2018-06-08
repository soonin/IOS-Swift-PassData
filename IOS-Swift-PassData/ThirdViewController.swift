//
//  ThirdViewController.swift
//  IOS-Swift-PassData
//
//  Created by Pooya on 2018-06-04.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var stringPassedHome : Int = 0
    var stringPassedSecond : String = ""
    var stringPassedThird : [String] = []

    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var mainP3Val: UITextField!
    @IBOutlet weak var secondP3Val: UITextField!
    @IBOutlet weak var thirdP3Val: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(stringPassedHome)
        print(stringPassedSecond)
        print(stringPassedThird.description)
        self.mainP3Val!.text = String(stringPassedHome)
        self.secondP3Val!.text = stringPassedSecond
        self.thirdP3Val!.text = stringPassedThird.joined(separator: " ")
        
        let image = UIImage(named: "colorfull02")
        pageTitle.textColor = UIColor(patternImage: image!)
        pageTitle.backgroundColor = UIColor.lightGray
    }


    @IBAction func goToSecond(_ sender: Any) {
        let myVC2 = storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        myVC2.stringPassedHome = Int(self.mainP3Val.text!)!
        myVC2.stringPassedSecond = self.secondP3Val.text!
        myVC2.stringPassedThird = self.thirdP3Val.text!.split(regex: " ")
        self.present(myVC2, animated: true , completion: nil)
    }
    
    
    @IBAction func goToHome(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "Main") as! ViewController
        myVC.stringPassedHome = Int(self.mainP3Val.text!)!
        myVC.stringPassedSecond = self.secondP3Val.text!
        myVC.stringPassedThird = self.thirdP3Val.text!.split(regex: " ")
        self.present(myVC, animated: true , completion: nil)
    }
    

}
