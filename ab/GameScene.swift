//
//  GameScene.swift
//  ab
//
//  Created by Adam Johnson on 6/23/15.
//  Copyright (c) 2015 Adam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    override func didMoveToView(view: SKView)
    {
        // commeeeeeeennnnttttt
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
        //testing testing 123
    }


    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        
        for touch in (touches as! Set<UITouch>)
        {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
    
   
    override func update(currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
    }
}
