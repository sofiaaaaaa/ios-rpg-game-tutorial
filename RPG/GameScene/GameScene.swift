//
//  GameScene.swift
//  RPG
//
//  Created by punky on 2021/02/28.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //MARK: - Variable
    var GameData = NSMutableDictionary()
    
    var Player = Character()
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
    
    let AttackButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let AttackButton = SKSpriteNode(imageNamed: "AttackButton")
    let ItemButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let ItemButton = SKSpriteNode(imageNamed: "ItemButton")
    let SkillButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let SkillButton = SKSpriteNode(imageNamed: "SkillButton")

    
    var TouchPoint = CGPoint()
    
    // 게임실행시 가장 먼저 실행되며 한번만 실행됨
    override func didMove(to view: SKView) {
        
        Scene = self
        
        // Local Camera //
        self.camera = LocalCamera
        self.addChild(LocalCamera)
        
        // Controller //
        ControlBase.position = CGPoint(x: -500, y: -200)
        ControlBase.zPosition = 100 // 우선순위
        ControlBase.alpha = 0.5 // 투명도
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition // 우선순위
        ControlBall.alpha = ControlBase.alpha // 투명도
        self.addChild(ControlBall)
        
        AttackButtonBase.position = CGPoint(x: 375, y: -125)
        AttackButtonBase.zPosition = 99 // 우선순위
        AttackButtonBase.alpha = 0.5 // 투명도
        self.addChild(AttackButtonBase)
        
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100 // 우선순위
        AttackButton.alpha = 1 // 투명도
        self.addChild(AttackButton)
        
        ItemButtonBase.position = CGPoint(x: 350, y: -300)
        ItemButtonBase.zPosition = 99 // 우선순위
        ItemButtonBase.alpha = 0.5 // 투명도
        self.addChild(ItemButtonBase)
        
        ItemButton.position = ItemButtonBase.position
        ItemButton.zPosition = 100 // 우선순위
        ItemButton.alpha = 1 // 투명도
        self.addChild(ItemButton)
        
        SkillButtonBase.position = CGPoint(x: 510, y: -200)
        SkillButtonBase.zPosition = 99 // 우선순위
        SkillButtonBase.alpha = 0.5 // 투명도
        self.addChild(SkillButtonBase)
        
        SkillButton.position = SkillButtonBase.position
        SkillButton.zPosition = 100 // 우선순위
        SkillButton.alpha = 1 // 투명도
        self.addChild(SkillButton)
        
        // Data //
        let Path = Bundle.main.path(forResource: "GameData", ofType: "plist")
        GameData = NSMutableDictionary(contentsOfFile: Path!)!
        Data_Player()
        
    }
   
}
