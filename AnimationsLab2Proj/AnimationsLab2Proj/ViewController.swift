//
//  ViewController.swift
//  AnimationsLab2Proj
//
//  Created by Kevin Natera on 10/18/19.
//  Copyright © 2019 Kevin Natera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var linearButton: UIButton = {
        var button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.frame = CGRect(x: 10, y: 50, width: 80, height: 30)
        button.addTarget(self, action: #selector(linearButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
   
    
    lazy var linearBall: UIButton = {
        var button = UIButton()
        button.frame = CGRect(x: 10, y: 85, width: 90, height: 100)
        button.setImage(UIImage(named: "beachBall"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    lazy var easeInButton: UIButton = {
        var button = UIButton()
        button.setTitle("Ease In", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.frame = CGRect(x: 100, y: 50, width: 80, height: 30)
        button.addTarget(self, action: #selector(easeInButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeInBall: UIButton = {
        var button = UIButton()
        button.frame = CGRect(x: 100, y: 85, width: 90, height: 100)
        button.setImage(UIImage(named: "beachBall"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }()
    
    lazy var easeOutButton: UIButton = {
        var button = UIButton()
        button.setTitle("Ease Out", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.frame = CGRect(x: 190, y: 50, width: 80, height: 30)
        button.addTarget(self, action: #selector(easeOutButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeOutBall: UIButton = {
           var button = UIButton()
           button.frame = CGRect(x: 190, y: 85, width: 90, height: 100)
           button.setImage(UIImage(named: "beachBall"), for: .normal)
           button.imageView?.contentMode = .scaleAspectFill
           return button
       }()
    
    lazy var easeInAndOutButton: UIButton = {
        var button = UIButton()
        button.setTitle("Ease In & Out", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.frame = CGRect(x: 280, y: 50, width: 120, height: 30)
        button.addTarget(self, action: #selector(easeInAndOutButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var easeInAndOutBall: UIButton = {
           var button = UIButton()
           button.frame = CGRect(x: 280, y: 85, width: 90, height: 100)
           button.setImage(UIImage(named: "beachBall"), for: .normal)
           button.imageView?.contentMode = .scaleAspectFill
           return button
       }()
    
    lazy var resetButton: UIButton = {
        var button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 10, y: 800, width: 100, height: 30)
        button.addTarget(self, action: #selector(resetButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var animateButton: UIButton = {
        var button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 290, y: 800, width: 100, height: 30)
        button.addTarget(self, action: #selector(animateButtonPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
    }

    @objc func resetButtonPressed(sender: UIButton) {
        linearBall.frame = CGRect(x: 10, y: 85, width: 90, height: 100)
        easeInBall.frame = CGRect(x: 100, y: 85, width: 90, height: 100)
        easeOutBall.frame = CGRect(x: 190, y: 85, width: 90, height: 100)
        easeInAndOutBall.frame = CGRect(x: 280, y: 85, width: 90, height: 100)
    }
    
    @objc func animateButtonPressed(sender: UIButton) {
        animateLinearBall()
        animateEaseInBall()
        animateEaseOutBall()
        animateEaseInAndOutBall()
    }
    
    @objc func linearButtonPressed(sender: UIButton) {
           if linearBall.alpha == 1.0 {
               linearBall.alpha = 0.0
           } else {
               linearBall.alpha = 1.0
           }
       }
    
    @objc func easeInButtonPressed(sender: UIButton) {
           if easeInBall.alpha == 1.0 {
               easeInBall.alpha = 0.0
           } else {
               easeInBall.alpha = 1.0
           }
       }
    
    @objc func easeOutButtonPressed(sender: UIButton) {
           if easeOutBall.alpha == 1.0 {
               easeOutBall.alpha = 0.0
           } else {
               easeOutBall.alpha = 1.0
           }
       }
    
    @objc func easeInAndOutButtonPressed(sender: UIButton) {
           if easeInAndOutBall.alpha == 1.0 {
               easeInAndOutBall.alpha = 0.0
           } else {
               easeInAndOutBall.alpha = 1.0
           }
       }
 
    private func animateLinearBall() {
        UIView.animate(withDuration: 2.0) {
            self.linearBall.frame = CGRect(x: 10, y: 700, width: 90, height: 100)
        }
    }
    
    private func animateEaseInBall() {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.easeInBall.frame = CGRect(x: 100, y: 700, width: 90, height: 100)
        }, completion: nil)
    }
    
    private func animateEaseOutBall() {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut, animations: {
                  self.easeOutBall.frame = CGRect(x: 190, y: 700, width: 90, height: 100)
              }, completion: nil)
    }
    
    private func animateEaseInAndOutBall() {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseInOut, animations: {
                  self.easeInAndOutBall.frame = CGRect(x: 280, y: 700, width: 90, height: 100)
              }, completion: nil)
    }
    
    private func addSubViews() {
        view.backgroundColor = .white
        view.addSubview(linearButton)
        view.addSubview(easeInButton)
        view.addSubview(easeOutButton)
        view.addSubview(easeInAndOutButton)
        view.addSubview(resetButton)
        view.addSubview(animateButton)
        view.addSubview(linearBall)
        view.addSubview(easeInBall)
        view.addSubview(easeOutBall)
        view.addSubview(easeInAndOutBall)
    }

}

