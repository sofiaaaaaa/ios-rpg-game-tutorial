//
//  Character.swift
//  RPG
//
//  Created by punky on 2021/03/01.
//


import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    //MARK: - Variable
    
    // Direction //
    var CurrentDirection = Direction.ST
    var LastDirection = Direction.ST
    var AttackDirection = Direction.S
    
    // Status //
    var PositionX = CGFloat()
    var PositionY = CGFloat()
    var SP = CGFloat()
    var RunSP = CGFloat()
    var WalkSP = CGFloat()
    var Number = Int()
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
    
    
    // Mode //
    var MoveDelayIs = Bool(false)
    var AttackDelayIs = Bool(false)
    var SkillDelayIs = Bool(false)
    
    // Variable_End
    
    
}
