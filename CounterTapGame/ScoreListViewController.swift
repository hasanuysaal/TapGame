//
//  ScoreListViewController.swift
//  CounterTapGame
//
//  Created by Selman ADANİR on 13.11.2022.
//

import UIKit

class ScoreListViewController: UIViewController {
    
    @IBOutlet weak var scoreListTableView: UITableView!
    
    var name: [String] = []
    var score: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        name = UserDefaults.standard.array(forKey: "users") as? [String] ?? []
        score = UserDefaults.standard.array(forKey: "scores") as? [String] ?? []
        
    
        
        setScoreList()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        for element in name {
            print(element)
        }
    }
    
    
    private func setScoreList() {
        scoreListTableView.register(UINib(nibName: "ScoreListTableViewCell", bundle: .main), forCellReuseIdentifier: "ScoreListTableViewCell")
    }
    
}

extension ScoreListViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = scoreListTableView.dequeueReusableCell(withIdentifier: "ScoreListTableViewCell", for: indexPath) as? ScoreListTableViewCell
        cell?.configureCell(name: "mehmet", score: 100)
        return cell ?? UITableViewCell()
        
    }
}
