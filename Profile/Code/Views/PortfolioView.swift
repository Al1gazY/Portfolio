//
//  ContentView.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import SwiftUI

struct PortfolioView: View {
    
    // MARK: - variables
    
    var appModel: AppModel = AppModel()
    
    // MARK: - views
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .leading){
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width)
                        .padding(.top, 32)
                    
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
