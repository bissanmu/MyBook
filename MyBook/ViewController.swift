//
//  ViewController.swift
//  MyBook
//
//  Created by ktds 29  on 2017. 8. 17..
//  Copyright © 2017년 ktds 29 . All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginViewControllerProtocol {

    @IBOutlet weak var idLable: UILabel!
    @IBOutlet weak var pwLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let idStr = UserDefaults.standard.object(forKey: "userId" ) as? String
        let pwStr = UserDefaults.standard.object(forKey: "userPassword") as? String
        
        if let id = idStr, let pw = pwStr{
            let welcomeAlert = UIAlertController(title : "My Book", message: "\(id)님 환영합니다.",
            preferredStyle:.alert)
            
            let closeAction = UIAlertAction(title : "닫기",  style: .cancel, handler: nil)
            welcomeAlert.addAction(closeAction)
            self.present(welcomeAlert, animated: true, completion: nil)
        }else{
            self.shouldPerformSegue(withIdentifier: "loginvc", sender: self)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
       if let vc = segue.destination as? LoginViewController {
            vc.delegate = self
        }
    }
    
    func send(withId: String, password: String) {
        self.idLable.text = withId
        self.pwLabel.text = password
        
        UserDefaults.standard.set(withId, forKey: "userId")
        UserDefaults.standard.set(password, forKey: "userPassword")
    }
}

