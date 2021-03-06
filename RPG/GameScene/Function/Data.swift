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
        Player.PhysicsBody_Player()
        self.addChild(Player)
        
        PlayerMinion = Character(color: UIColor.green, size: CGSize(width: 5, height: 5))
        MiniMap.addChild(PlayerMinion)
    }
    // Player_end
    
    //MARK: - Monster
    func Data_Monster() {
        let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
        
        var Number = Int(0)
        
        for (_, value) in MonsterGroupData {
            let Data = value as! [String:Any]
            let PositionX = Data["PositionX"] as! CGFloat
            let PositionY = Data["PositionY"] as! CGFloat
            let SP = Data["SP"] as! CGFloat

            Monster = Character(imageNamed: "Archor")
            Monster.PositionX = PositionX
            Monster.PositionY = PositionY
            Monster.SP = SP
            Monster.Number = Number
            
            Monster.position = CGPoint(x: PositionX, y: PositionY)
            Monster.zPosition = 10
            Monster.PhysicsBody_Monster()

            MonsterGroup.append(Monster)
            
            self.addChild(Monster)
            
            MonsterMinion = Character(color: UIColor.red, size: CGSize(width: 5, height: 5))
            MonsterMinion.Number = Number
            MonsterGroupMinion.append(MonsterMinion)
            MiniMap.addChild(MonsterMinion)
            
            Number += 1
        }
    }
    // Monster_end
}

