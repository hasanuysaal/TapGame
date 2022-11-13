//
//  UserModel.swift
//  CounterTapGame
//
//  Created by Ömer Faruk Öztürk on 13.11.2022.
//

import Foundation

class UserModel {
    var userName: String?
    var scores: [Int]?
    var highScore: Int?
    
    init(userName: String, scores: [Int], highScore: Int = 0) {
        self.userName = userName
        self.scores = scores
        self.highScore = highScore
    }
}
