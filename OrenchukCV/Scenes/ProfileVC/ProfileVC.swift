//
//  ProfileVC.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

final class ProfileVC: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var profileBackgroundView: UIView!
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var emailButton: UIButton!
    @IBOutlet private weak var phoneButton: UIButton!
    @IBOutlet private weak var facebookButton: UIButton!
    @IBOutlet private weak var instagramButton: UIButton!
    @IBOutlet private weak var telegramButon: UIButton!
    
    // MARK: - ViewController Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - IBActions
    
    @IBAction func callNumber(_ sender: UIButton) {
        if let phone = sender.currentTitle, let url = URL(string: "tel://\(phone)") {
            let application = UIApplication.shared
            
            if application.canOpenURL(url) {
                    application.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        profileBackgroundView.setDefaultOpacityRoundedStyle()
        profileImageView.setRounded()
        
        var contactsButtons: [UIButton] {
            return [emailButton, phoneButton, facebookButton, instagramButton, telegramButon]
        }
        
        for button in contactsButtons {
            button.setDefaultRoundedStyle()
        }
    }
}
