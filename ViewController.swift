//
//  ViewController.swift
//  Alert uyarı mesajı
//
//  Created by Yasin Lider on 3.02.2018.
//  Copyright © 2018 Yasin Lider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func uyarıClicked(_ sender: Any) {
        
        if userNameText.text == "" {
            let alert = UIAlertController(title: "Uyarı", message: "UserName Boş Geçemezsiniz", preferredStyle: UIAlertControllerStyle.alert)
            let OkButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(OkButton)
            self.present(alert, animated: true, completion: nil)
        }
       else if passwordText.text == ""{
        let alert = UIAlertController(title: "Uyarı", message: "Password Boş Geçilemez", preferredStyle: UIAlertControllerStyle.alert)
        let OkButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(OkButton)
        self.present(alert, animated: true, completion: nil)
        }
       else if passwordText.text != password2Text.text{
            let alert = UIAlertController(title: "Uyarı", message: "Password Aynı değil", preferredStyle: UIAlertControllerStyle.alert)
            let OkButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(OkButton)
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Tamam", message: "Tebrikler", preferredStyle: UIAlertControllerStyle.alert)
            let OkButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(OkButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

