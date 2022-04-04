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
    @IBOutlet weak var background: UIView!
    
    private var keyHeight: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        background.backgroundColor = UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1)
        
        setIdField()
        setPasswordField()
        setPasswordCheckField()
        setNameField()
        setButton()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        idField.resignFirstResponder()
        passwordField.resignFirstResponder()
        passwordCheckField.resignFirstResponder()
        nameField.resignFirstResponder()
    }
    
    func setIdField() {
        idField.frame = CGRect(x: 35, y: 207 , width: 320, height: 50)
        idField.borderStyle = .roundedRect
        idField.placeholder = "영문 소문자, 숫자, 특수기호(_, -), 5-20자"
    }
    
    func setPasswordField() {
        passwordField.frame = CGRect(x: 35, y: 315 , width: 320, height: 50)
        passwordField.borderStyle = .roundedRect
        passwordField.placeholder = "영문 대/소문자, 숫자, 특수문자(!@#$%), 8-16자"
    }
    
    func setPasswordCheckField() {
        passwordCheckField.frame = CGRect(x: 35, y: 423 , width: 320, height: 50)
        passwordCheckField.borderStyle = .roundedRect
        passwordCheckField.placeholder = "설정한 비밀번호를 입력해주세요."
    }
    
    func setNameField() {
        nameField.frame = CGRect(x: 35, y: 532 , width: 320, height: 50)
        nameField.borderStyle = .roundedRect
        nameField.placeholder = "이름을 입력해주세요."
    }
    
    func setButton() {
        button.tintColor = UIColor(red: 235 / 255, green: 155 / 255, blue: 100 / 255, alpha: 1)
    }

    @objc func keyboardWillShow(_ sender: Notification) {
        let userInfo: NSDictionary = sender.userInfo! as NSDictionary
        let keyboardFrame: NSValue = userInfo.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue
        let keyboardRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keyboardRectangle.height
        
        keyHeight = keyboardHeight
        
        self.view.frame.size.height -= keyboardHeight
    }

    @objc func keyboardWillHide(_ sender: Notification) {
        guard let keyHeight = keyHeight else { return }
        self.view.frame.size.height += keyHeight
    }
    


}
