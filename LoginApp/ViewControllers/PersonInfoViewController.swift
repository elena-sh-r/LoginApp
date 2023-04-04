//
//  AuthorViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 04.04.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var personPhoto: UIImageView!
    @IBOutlet var personName: UILabel!
    @IBOutlet var personSurname: UILabel!
    @IBOutlet var personCompany: UILabel!
    @IBOutlet var personDepartment: UILabel!
    @IBOutlet var personPosition: UILabel!
    
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
        
        self.title = "\(person?.name ?? "") \(person?.surname ?? "")"
        
        personName.text = person?.name
        personSurname.text = person?.surname
        personCompany.text = person?.company
        personDepartment.text = person?.department
        personPosition.text = person?.position
        
        if let photo = person?.photo {
            personPhoto.image = UIImage(named: photo)
        }
    }
    
    override func viewDidLayoutSubviews() {
        personPhoto.layer.cornerRadius = personPhoto.layer.bounds.width / 2
        personPhoto.clipsToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personBioVC = segue.destination as? PersonBioViewController else { return }
        personBioVC.person = person
    }
}
