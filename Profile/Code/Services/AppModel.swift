//
//  AppModel.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Aligazy Kismetov", role: "iOS Developer", description: "Immensely passionate about iOS and related technologies, I am also a UI/UX enthusiast - I love to tinker with tech.", location: "Almaty - Astana", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
        Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays")
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Atlas Soft", duration: "1 year", role: "Junior iOS Devloper"),
        Experience(id: UUID().uuidString, companyName: "Eagle Dev", duration: "1 year", role: "Middle iOS Devloper"),
        Experience(id: UUID().uuidString, companyName: "Apple", duration: "2 years", role: "Senior iOS Devloper")
    ])
}
