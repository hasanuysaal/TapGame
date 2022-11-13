//
//  ScoreListTableViewCell.swift
//  CounterTapGame
//
//  Created by Selman ADANİR on 13.11.2022.
//

import UIKit

class ScoreListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(name: String, score: String) {
        nameLabel.text = name
        scoreLabel.text = score
    }
    
}
