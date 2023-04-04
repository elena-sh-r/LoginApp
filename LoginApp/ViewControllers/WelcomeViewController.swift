//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var introducingLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User?
    
    // MARK: - Private Properties
    private let lightBlue = UIColor(
        red: 130 / 255,
        green: 183 / 255,
        blue: 254 / 255,
        alpha: 1.0
    )
    
    private let darkBlue = UIColor(
        red: 0 / 255,
        green: 119 / 255,
        blue: 190 / 255,
        alpha: 1.0
    )
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: lightBlue, bottomColor: darkBlue)
        welcomeLabel.text = "Welcome, \(user?.login ?? "")!"
        introducingLabel.text = "My name is \(user?.person.name ?? "") \(user?.person.surname ?? "")."
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
