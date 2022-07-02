//
//  ViewController.swift
//  HW_11
//
//  Created by APPLE on 02.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var sliderLabel: UISlider!
    
    var array : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func numberSlider(_ sender: UISlider) {
        let currentNumber = Int(sliderLabel.value)
        firstLabel.text = String(Int.random(in: 0...currentNumber))
        secondLabel.text = String(Int.random(in: 0...currentNumber))
        thirdLabel.text = String(Int.random(in: 0...currentNumber))
        
    }
  
    @IBAction func displayNumbers(){
        array.removeAll()
        array.append(Int(firstLabel.text!)!)
        array.append(Int(secondLabel.text!)!)
        array.append(Int(thirdLabel.text!)!)
       print(array)
        if myTextField.text == "Maximum" {
            resultLabel.text = "მაქსიმუმია \(array.max()!)"
        } else if myTextField.text == "Average" {
            resultLabel.text = "საშუალოა \(String(array.reduce(0, {x,y in x + y }) / array.count))"
            
        } else if myTextField.text == "Sum" {
            resultLabel.text = "ჯამია \(String(array.reduce(0, {x,y in x + y })))"
        }
        else {
            let alert = UIAlertController(title: "შეცდომა სიტყვაში",message: "სცადეთ თავიდან",preferredStyle: .alert)
            let action = UIAlertAction(title:"დახურვა",style: .default,handler: nil)
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
        }
    }
    
}

