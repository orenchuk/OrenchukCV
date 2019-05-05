//
//  ExperienceVC.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

final class ExperienceVC: UIViewController {
    
    // MARK: - Properties
    
    private let model = ExperienceViewModel()
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var experienceBackgroundView: UIView!
    
    // MAKR: - ViewController Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.layer.backgroundColor = UIColor.clear.cgColor
        tableView.allowsSelection = false
        tableView.register(UINib(nibName: "ExperienceCell", bundle: nil), forCellReuseIdentifier: model.experienceCellIdentifier)
//        tableView.estimatedRowHeight = Constants.Height.experienceCellHeight
//        tableView.rowHeight = UITableView.automaticDimension
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.layer.backgroundColor = UIColor.clear.cgColor
        
        setupUI()
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        experienceBackgroundView.setDefaultOpacityRoundedStyle()
    }
}

// MARK: - TableView delegates

extension ExperienceVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.Height.experienceCellHeight
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.experience.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: model.experienceCellIdentifier, for: indexPath) as? ExperienceCell {
            cell.experience = model.experience[indexPath.row]
            return cell
        }
    
        return UITableViewCell()
    }
}

// MARK: - CollectionView delegates

extension ExperienceVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.skills.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model.skillCellIdentifier, for: indexPath) as? SkillCell {
            cell.title = model.skills[indexPath.row].name
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return model.sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return model.sectionInsets.left
    }
}
