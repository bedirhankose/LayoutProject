//
//  ViewController.swift
//  LayoutProject
//
//  Created by Bedirhan Köse on 19.12.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        //Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 30, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        //Button
        let myButton = UIButton()
        myButton.setTitle("Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.60, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action:#selector(ViewController.buttonTapped), for: UIControl.Event.touchUpInside)
        
    }
    
    @IBAction func buttonTapped() {
        print("User tapped to the button")
    }


}

