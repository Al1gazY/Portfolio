//
//  ExperienceView.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import SwiftUI

struct ExperienceView: View {
    
    // MARK: - variables
    var experience: Experience
    
    // MARK: - views
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(.system(size: 18.5, weight: .semibold))
                    Text(experience.companyName)
                        .font(.system(size: 16.5, weight: .medium))
                        .opacity(0.75)
                        .padding(.top, 4)
                    
                    Text(experience.duration)
                        .font(.system(size: 16, weight: .regular))
                        .opacity(0.45)
                        .padding(.top, 8)
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperienceView(experience: AppModel().portfolio.experiences[0])
                .padding(24)
        }
    }
}
