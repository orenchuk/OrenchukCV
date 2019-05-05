//
//  ExperienceCell.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

final class ExperienceCell: UITableViewCell {
    
    // MARK: - Properties
    
    var experience: Experience? {
        willSet {
            if let experience = newValue {
                titleLabel.text = experience.title
                descriptionLabel.text = experience.description
            }
        }
    }
    
    // MARK: -  IBOutlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var dotView: UIView!
    
    // MARK: - Cell Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    // MARK: - SetupUI
    
    private func setupUI() {
        self.backgroundColor = .clear
        dotView.setRounded()
    }
    
}
