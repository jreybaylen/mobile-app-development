//
//  PortfolioView.swift
//  PortfolioSwiftUI
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct PortfolioView: View {
    
    var projects: Array<Project> = ProjectList.websites
    
    var body: some View {
        NavigationView {
            List(projects, id: \.id) { project in
                NavigationLink(
                    destination: ProjectView(project: project),
                    label: {
                        Image(project.thumbnail)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                            .cornerRadius(5)
                            .padding(.vertical, 5)
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            Text(project.title)
                                .fontWeight(.semibold)
                                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                .minimumScaleFactor(1)
                            
                            Text(project.date)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        })
                    })
            }
            .navigationTitle("Projects")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
