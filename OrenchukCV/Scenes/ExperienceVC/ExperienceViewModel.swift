//
//  ExperienceViewModel.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

final class ExperienceViewModel {
    
    // MAKR: - Properties
    
    var experience: [Experience] = {
        return [
            Experience(title: "iOS UCU Winter School", description: "Successfully graduated intensive course of learning fundamentals of iOS Developing, where my team from 3 persons did a small app for the currency conversion with a text detection feature. My part was to create a custom camera view with AVFoundation and to connect Vision framework for text detection."),
            Experience(title: "Japanese freelance project", description: "With my teammate from the previous course, we took a project on Upwork for japanese lawyers to get some real-world experience. The main part of it was work with UI and REST API through Alamofire framework. It took us about two months to get this done"),
            Experience(title: "Startup for restaurants in Lviv", description: "It's been a month as I've started working on it, and at this time I implement the UI.")
        ]
    }()
    
    var skills: [Skill] = {
        let titles = ["Swift", "C++", "Python", "Javascript", "Java", "UIKit", "WebKit", "SpriteKit", "GameplayKit", "AutoLayout", "GCD", "UserDefaults", "URLSession", "Alamofire", "GoogleAdMobs", "AVFoundation", "R.swift", "GoogleAPIClientForREST/Sheets", "GoogleSignIn", "Codable", "JSON", "SwiftyJSON", "HTML", "CSS", "MVC", "MVVM", "Git", "Photoshop", "Sketch"]
        
        return titles.map({ return Skill(name: $0) })
    }()
    
    let experienceCellIdentifier = "ExperienceCell"
    let skillCellIdentifier = "SkillCell"
    
    let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    
}
