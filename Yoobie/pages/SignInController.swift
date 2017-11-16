//
//  SignInController.swift
//  Yoobie
//
//  Created by Ron Lu on 16/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit


struct LoginData: Codable {
    var email: String?
    var password: String?
    var deviceToken: String?
    var deviceModel: String?
}

class SignInController: RootController {

    
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var mailInput: UITextField!
    @IBOutlet weak var passInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signButton.layer.borderWidth = 2
        signButton.layer.borderColor = UIColor.white.cgColor
        signButton.layer.cornerRadius = 6
    }

    @IBAction func signIn(_ sender: Any) {
        
        let loginData = LoginData(email: "atromoby@gmail.com", password: "mymaster", deviceToken: "N/A", deviceModel: "N/A")
        // Sorry Brad
        let encoder = JSONEncoder()
        let jsonData = try! encoder.encode(loginData)
      
    
        let request = Request(contex: self, blocked: true)
        request.post(url: "https://clockwork-api.azurewebsites.net/v1/authentication/login", json: String(data: jsonData, encoding: .utf8)!, auth: "") { response in
            
            let code = response.response?.statusCode
            
            if(code == 200){
                Toast.show(contex: self, message: response.result.value!)
                /*
                let myjson = response.result.value
                let userr: LoginResult = LoginResult(json: myjson!)
                
                Profile.token(val: userr.apiToken)
                Profile.firstName(val: userr.firstName)
                Profile.lastName(val: userr.lastName)
                Profile.userID(val: userr.userId)
                Profile.role(val: userr.userRoleId + 1)
                
                Kit.goTo(contex: self, id: "LoadingVC")*/
            }
            else if (code == 404){
                Toast.show(contex: self, message: "Error: email not found")
            }
            else if (code == 401){
                Toast.show(contex: self, message: "Error: password not correct")
            }
            else{
                Toast.show(contex: self, message: "Bad connection")
            }
        }
        
    }
    

}
