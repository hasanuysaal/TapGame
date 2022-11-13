//
//  ResultViewController.swift
//  CounterTapGame
//
//  Created by Ömer Faruk Öztürk on 13.11.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var highScoreLabel: UILabel!
    
    var currentScore = ""
//    var userModelList: [UserModel]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScoreLabel.text = currentScore
        // Do any additional setup after loading the view.
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
