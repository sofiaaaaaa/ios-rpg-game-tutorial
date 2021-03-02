//
//  Data.swift
//  RPG
//
//  Created by punky on 2021/03/02.
//


import SpriteKit
import GameplayKit

extension GameScene {
    //MARK: - Player
    func Data_Player() {
        let Data = GameData["Player"] as! [String:Any]
        let SP = Data["SP"] as! CGFloat
        Player = Character(imageNamed: "RedSwan")
        Player.SP = SP
        Player.zPosition = 10
        self.addChild(Player)
    }
    
    
    // Player_end
}

