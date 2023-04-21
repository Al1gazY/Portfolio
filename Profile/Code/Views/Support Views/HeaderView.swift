//
//  HeaderView.swift
//  Profile
//
//  Created by Aligazy Kismetov on 21.04.2023.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - variables
    var appModel: AppModel
    
    // MARK: - views
    
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image("apple")
                    .resizable()
                    .clipShape(Capsule())
                    .frame(width: 100, height: 100)
                    .padding(5)
                    .background(
                        Circle()
                            .foregroundColor(.white)
                            .opacity(0.7)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            
            Text(appModel.portfolio.name)
                .font(.system(size: 17, weight: .bold))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(.system(size: 18, weight: .regular))
                .opacity(0.85)
                .padding(.top, -2)

            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .font(.system(size: 17, weight: .regular))
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .padding(.top, 24)
                .opacity(0.7)
                .font(.system(size: 16, weight: .medium))
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
