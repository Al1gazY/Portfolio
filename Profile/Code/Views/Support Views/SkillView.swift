//
//  SkillView.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import SwiftUI

struct SkillView: View {
    
    // MARK: - variables
    var skill: Skill
    var width: CGFloat = 120
    
    // MARK: - views
    var body: some View {
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(.system(size: 13.5, weight: .semibold))
                .padding(.top, 10)
        }
        .padding()
        .frame(width: width, height: 109.7)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
