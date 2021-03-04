//
//  Share.swift
//  RPG
//
//  Created by punky on 2021/03/01.
//

import Foundation
import SpriteKit

//MARK: - Variable
var Scene = GameScene()
let LocalCamera = SKCameraNode()

//MARK: - Enumeration

// Body Type //
enum BodyType: UInt32 {
    case Player = 1
    case Monster = 2
}

// Direction //
enum Direction {
    case E, W, S, N, ST
}
// Enumeration

