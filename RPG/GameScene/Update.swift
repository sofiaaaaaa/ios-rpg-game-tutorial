//
//  update.swift
//  RPG
//
//  Created by punky on 2021/03/01.
//

import SpriteKit
import GameplayKit

extension GameScene {
    //MARK: - Update
    
    // 계속 실행되는 함수
    // 가운데 지점이 0,0 좌표이다.
    override func update(_ currentTime: TimeInterval) {
        print(Player.CurrentDirection)
        
        Player.Function_Move()
        
//        if Player.position.x < TouchPoint.x - 5 {
//            // 플레이어 캐릭터의 오른쪽을 터치할 때
//            Player.position.x = Player.position.x + 5
//        } else if Player.position.x > TouchPoint.x + 5 {
//            // 플레이어 캐릭터의 왼쪽을 터치할 때
//            Player.position.x = Player.position.x - 5
//        }
//
//        if Player.position.y < TouchPoint.y - 5 {
//            // 아래 영역을 터치할 때
//            Player.position.y = Player.position.y + 5
//            print("-5")
//        } else if Player.position.y > TouchPoint.y + 5 {
//            // 플레이어 캐릭터의 윗쪽을 터치할 때
//            Player.position.y = Player.position.y - 5
//            print("+5")
//        }
    }
}
