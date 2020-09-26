//
//  ParticlesView.swift
//  Weather
//
//  Created by Vladimir Stepanchikov on 26.09.2020.
//

import SpriteKit

class ParticlesView: SKView {
    
    override func didMoveToSuperview() {
        let scene = SKScene(size: self.frame.size)
        scene.backgroundColor = UIColor.clear
        
        self.presentScene(scene)
        
        self.allowsTransparency = true
        self.backgroundColor = UIColor.clear
        
        if let particles = SKEmitterNode(fileNamed: "ParticleScene.sks") {
            particles.position = CGPoint(x: self.frame.size.width / 2,
                                         y: self.frame.size.height)
            particles.particlePositionRange = CGVector(dx: self.bounds.width, dy: 0)
            scene.addChild(particles)
        }
    }
    
}
