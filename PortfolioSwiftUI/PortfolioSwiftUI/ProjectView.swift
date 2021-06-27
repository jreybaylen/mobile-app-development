//
//  ProjectView.swift
//  PortfolioSwiftUI
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct ProjectView: View {
    
    var project: Project
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15, content: {
            Spacer()
            
            ProjectContentView(project: project)
            
            Spacer()
            
            Link(destination: project.url, label: {
                Text("Visit Now")
                    .bold()
                    .foregroundColor(.white)
                    .font(.title2)
                    .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            })
            
            Spacer()
        })
    }
}

struct ProjectContentView: View {
    
    var project: Project
    
    var body: some View {
        Image(project.thumbnail)
            .resizable()
            .scaledToFit()
            .frame(height: 180)
            .cornerRadius(12)
            .padding(.vertical, 10)
        
        Text(project.title)
            .font(.title2)
            .fontWeight(.semibold)
            .lineLimit(2)
            .multilineTextAlignment(.center)
        
        Text(project.date)
            .font(.subheadline)
            .foregroundColor(.secondary)
        
        Text(project.description)
            .font(.body)
            .fontWeight(.light)
            .padding(.vertical, 10)
            .padding(.horizontal, 40)
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project: ProjectList.websites.first!)
    }
}
