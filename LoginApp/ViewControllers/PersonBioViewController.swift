//
//  PersonBioViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 04.04.2023.
//

import UIKit

final class PersonBioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var personBio: UILabel!
    
    // MARK: - Public Properties
    var person: Person?
    
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
        self.title = "\(person?.name ?? "") \(person?.surname ?? "") Bio"
        personBio.text = person?.description ?? ""
    }

}
