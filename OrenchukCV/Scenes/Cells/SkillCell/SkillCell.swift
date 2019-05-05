//
//  SkillCell.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

final class SkillCell: UICollectionViewCell {
    
    // MARK: - Propperties
    
    var title: String? {
        willSet {
            if let title = newValue {
                titleLabel.text = title
            }
        }
    }
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Cell Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        setupUI()
    }
    
    // MARK: - SetupUI
    
    private func setupUI() {
        self.layer.cornerRadius = Constants.Radius.defaultLow
        self.layer.masksToBounds = true
        
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10.0).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10.0).isActive = true
//        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
