//
//  GameViewController.swift
//  The Heart Eater
//
//  Created by Francesco Perrotti-Garcia on 3/6/16.
//  Copyright (c) 2016 Francesco Perrotti-Garcia. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene()
        scene.size = view.bounds.size
        let skView = SKView(frame: view.bounds)
        
        #if DEBUG
            skView.showsFPS = true
            skView.showsNodeCount = true
        #endif
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
        view = skView
    }
}

// MARK - Status bar

extension GameViewController {
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

// MARK - Rotation

extension GameViewController {
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
}