//
//  ViewController.swift
//  PostCard
//
//  Created by Alireza on 10/25/14.
//  Copyright (c) 2014 Alireza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtnPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text // Приравниваю написанное в сообщениии к Лейблу
        messageLabel.textColor = UIColor.redColor() // меняю цвет
        
        enterMessageTextField.text = "" // Убираю поле текста, стираю весь текст
        enterMessageTextField.resignFirstResponder()//Убираю клавиатуру
        
        buttonOutlet.setTitle("Mail Sent", forState: UIControlState.Normal) //Меняю название кнопки
        
        
    }

}

