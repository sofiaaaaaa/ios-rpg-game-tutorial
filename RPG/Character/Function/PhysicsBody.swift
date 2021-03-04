//
//  PhysicsBody.swift
//  RPG
//
//  Created by punky on 2021/03/03.
//


import SpriteKit
import GameplayKit

extension Character {
 
    //MARK: - Player
    func PhysicsBody_Player() {
        let Texture = SKTexture(imageNamed: "RedSwan")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true // physicsBody끼리 물리적인 기능을 가동할 건지 여부.
        self.physicsBody?.affectedByGravity = false // 중력
        self.physicsBody?.allowsRotation = false // 부딪치면 물체가 돌아감
        self.physicsBody?.categoryBitMask = BodyType.Player.rawValue // 고유의 그룹아이디를 부여한다.
        self.physicsBody?.collisionBitMask = BodyType.Monster.rawValue // 플레이어는 몬스터와 겹치지 않게 한다.
        
    }
    
    //MARK: - Monster
    func PhysicsBody_Monster() {
        let Texture = SKTexture(imageNamed: "Archor")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.allowsRotation = false
        self.physicsBody?.categoryBitMask = BodyType.Monster.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Player.rawValue | BodyType.Monster.rawValue
        
    }
}
