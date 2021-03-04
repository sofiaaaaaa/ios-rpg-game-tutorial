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
        
        // Mini Map //
        PlayerMinion.position = CGPoint.zero
        
        
        
        for i in 0...MonsterGroupMinion.count - 1 {
            MonsterGroupMinion[i].position.x = (MonsterGroup[i].position.x - Player.position.x) / 10
            MonsterGroupMinion[i].position.y = (MonsterGroup[i].position.y - Player.position.y) / 10

            // 미니맵에 몬스터가 경계면에 있는지 확인
            if MiniMap.intersects(MonsterGroupMinion[i]) {
                MonsterGroupMinion[i].alpha = 1
            } else {
                MonsterGroupMinion[i].alpha = 0
            }
        }
        
        // Camera //
        // 플레이어가 움직이는데로 화면이 움직임
        LocalCamera.position = Player.position
        
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
