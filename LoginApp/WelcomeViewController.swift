//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pinkColor = UIColor(
            red: 238 / 255,
            green: 130 / 255,
            blue: 238 / 255,
            alpha: 1.0
        ).cgColor
        
        let purpleColor = UIColor(
            red: 75 / 255,
            green: 0 / 255,
            blue: 130 / 255,
            alpha: 1.0
        ).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [pinkColor, purpleColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.text = userName
    }

    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
}
