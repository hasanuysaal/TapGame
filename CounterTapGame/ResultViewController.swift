//
//  ResultViewController.swift
//  CounterTapGame
//
//  Created by Ömer Faruk Öztürk on 13.11.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var userNameTextLabel: UITextField!
    
    let userDefault = UserDefaults.standard
    var userArr: [String] = []
    var scoreArr: [String] = []
    var currentScore = ""
//    var userModelList: [UserModel]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScoreLabel.text = currentScore
        // Do any additional setup after loading the view.
        
       

        
        
        

        
    }
    
    @IBAction func saveUserButtonPressed(_ sender: Any) {
        
        
        self.scoreArr = self.userDefault.array(forKey: "scores") as? [String] ?? []

        self.scoreArr.append(self.highScoreLabel.text ?? "")
        
        self.userDefault.setValue(self.scoreArr, forKey: "scores")
        print(self.scoreArr)
        
        self.userArr = self.userDefault.array(forKey: "users") as? [String] ?? []

        self.userArr.append(self.userNameTextLabel.text ?? "")
        
        self.userDefault.setValue(self.userArr, forKey: "users")
        print(self.userArr)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
