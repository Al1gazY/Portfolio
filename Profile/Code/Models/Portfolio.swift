//
//  Portfolio.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import Foundation

struct Skill: Identifiable{
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let duration: String
    let role: String
}

struct Portfolio{
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experiences: [Experience]
}
