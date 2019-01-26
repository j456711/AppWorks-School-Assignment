//
//  ViewController.swift
//  LogInAndSignUp
//
//  Created by 渡邊君 on 2019/1/24.
//  Copyright © 2019 Jill Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentLabel: UISegmentedControl!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        checkTextField.isUserInteractionEnabled = false
    }
    
    //功能：用來清除text field的文字
    func clearText() {
        accountTextField.text = ""
        passwordTextField.text = ""
        checkTextField.text = ""
    }
    
    //使用segmented control時，變換字型跟text field顏色、清除text field的文字，還有disable text field的功能
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkLabel.textColor = UIColor(red: 145/255.0, green: 145/255.0, blue: 145/255.0, alpha: 1.0)
            checkTextField.backgroundColor = UIColor(red: 145/255.0, green: 145/255.0, blue: 145/255.0, alpha: 1.0)
            checkTextField.isUserInteractionEnabled = false
            clearText()
        }
        else {
            checkLabel.textColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
            checkTextField.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            checkTextField.isUserInteractionEnabled = true
            clearText()
        }
    }
    
    //error類型
    enum LogInError: Error {
        case failLogIn
    }
    
    enum SignUpError: Error {
        case emptyAccount
        case emptyPassword
        case emptyCheckPassword
        case failSignUp
    }
    
    //功能：顯示alert
    func showAlertWith(title: String, message: String, preferredStyle: UIAlertController.Style = .alert) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
     
        self.present(alert, animated: true, completion: nil)
    }
    
    //功能：因為沒有建立segue，所以藉由呼叫storyboard ID來顯示modal view
    func presentModalView() {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "ModalView") {
            present(controller, animated: true, completion: nil)
        }
    }
    
    func presentSecondModalView() {
        if let secondController = storyboard?.instantiateViewController(withIdentifier: "SecondModalView") {
        present(secondController, animated: true, completion: nil)
        }
    }

    
    //功能：設計log in時的情況
    func logIn() throws {
        if accountTextField.text == "appwork_school@gmail.com", passwordTextField.text == "1234" {
            presentModalView()
        }
        else {
            throw LogInError.failLogIn
        }
    }
    
    //功能：設計sign up時的情況
    func signUp() throws {
        if accountTextField.text?.isEmpty == true {
            throw SignUpError.emptyAccount
        }
        else if passwordTextField.text?.isEmpty == true {
            throw SignUpError.emptyPassword
        }
        else if checkTextField.text?.isEmpty == true {
            throw SignUpError.emptyCheckPassword
        }
        else if passwordTextField.text != checkTextField.text {
            throw SignUpError.failSignUp
        }
        else {
            presentSecondModalView()
        }
    }
    
    
    //按下按鈕後會跑出的畫面
    @IBAction func button(_ sender: UIButton) {
        if segmentLabel.selectedSegmentIndex == 0 {
            do {
                try logIn()
            }
            catch LogInError.failLogIn {
                showAlertWith(title: "Error", message: "Login fail.")
            }
            catch {
                fatalError()
            }
        }
        else {
            do {
                try signUp()
            }
            catch SignUpError.emptyAccount {
                showAlertWith(title: "Error", message: "Account should not be empty.")
            }
            catch SignUpError.emptyPassword {
                showAlertWith(title: "Error", message: "Password should not be empty.")
            }
            catch SignUpError.emptyCheckPassword {
                showAlertWith(title: "Error", message: "Check password should not be empty.")
            }
            catch SignUpError.failSignUp {
                showAlertWith(title: "Error", message: "Signup fail.")
            }
            catch {
                fatalError()
            }
        }
    }
    
}

