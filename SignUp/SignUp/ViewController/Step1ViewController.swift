//
//  ViewController.swift
//  SignUp
//
//  Created by Jihee hwang on 2022/03/29.
//

import UIKit

class Step1ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordCheckField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var button: UIButton!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setIdField()
        setPasswordField()
        setPasswordCheckField()
        setNameField()
        setButton()
    }
    
    
    func setIdField() {
        idField.frame = CGRect(x: 35, y: 250 , width: 320, height: 50)
        idField.borderStyle = .roundedRect
        idField.placeholder = "영문 소문자, 숫자, 특수기호(_, -), 5-20자"
    }
    
    func setPasswordField() {
        passwordField.frame = CGRect(x: 35, y: 355 , width: 320, height: 50)
        passwordField.borderStyle = .roundedRect
        passwordField.placeholder = "영문 대/소문자, 숫자, 특수문자(!@#$%), 8-16자"
    }
    
    func setPasswordCheckField() {
        passwordCheckField.frame = CGRect(x: 35, y: 460 , width: 320, height: 50)
        passwordCheckField.borderStyle = .roundedRect
        passwordCheckField.placeholder = "설정한 비밀번호를 입력해주세요."
    }
    
    func setNameField() {
        nameField.frame = CGRect(x: 35, y: 565 , width: 320, height: 50)
        nameField.borderStyle = .roundedRect
        nameField.placeholder = "이름을 입력해주세요."
    }
    
    func setButton() {
        button.tintColor = UIColor(red: 235 / 255, green: 155 / 255, blue: 100 / 255, alpha: 1)
    }
    


}

