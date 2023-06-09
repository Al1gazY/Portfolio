//
//  SkillsView.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import SwiftUI

struct SkillsView: View {
    
    // MARK: - variables
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    // MARK: - views
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16){
                Text("Skills")
                    .font(.system(size: 21, weight: .bold))
                    .opacity(0.9)
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            
            if(showSkills){
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12){
                    ForEach(skills) { skill in
                        SkillView(skill: skill, width: width / 3 - 25)
                    }
                }.padding(.top, 25)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400)
                .padding(24)
        }
    }
}
