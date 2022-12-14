//
//  ViewController.swift
//  CounterTapGame
//
//  Created by Hasan Uysal on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var startLabel: UILabel!
    
    var highScore = 0
    var currentScore = 0
    var timer = Timer()
    var counter = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        highScore =  UserDefaults.standard.integer(forKey: "HighScore")
        
        highScoreLabel.text = "High Score : \(highScore)"
        timeLabel.text = "Time Left: \(counter)"
        
        myView.backgroundColor = .gray
        myView.isUserInteractionEnabled = true
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(updateScore))
        myView.addGestureRecognizer(tapGR)
        
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        counter = 3
        currentScore = 0
    }

    @objc func updateScore(){
        startLabel.text = String(currentScore)
        currentScore = currentScore + 1
        highScoreLabel.text = "High Score : \(highScore)"
    }
    
    @objc func timerFunc(){
        counter = counter - 1
        timeLabel.text = "Time Left: \(counter)"
        
        if counter == 0 {
            timer.invalidate()
            myView.isUserInteractionEnabled = false
            
            if highScore < currentScore {
                
                UserDefaults.standard.setValue(currentScore, forKey: "HighScore")
            }
            
            performSegue(withIdentifier: "toResultVC", sender: nil)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.currentScore = String(self.currentScore)
        }
        
    }
    
}

