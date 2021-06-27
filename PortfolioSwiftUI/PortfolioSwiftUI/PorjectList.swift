//
//  PorjectList.swift
//  PortfolioSwiftUI
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct Project: Identifiable {
    var url: URL
    var date: String
    var title: String
    var thumbnail: String
    var description: String
    var id = UUID()
}

struct ProjectList {
    static let websites = [
        Project(url: URL(string: "https://apps.apple.com/us/app/skt/id1522302221")!,
                date: "June 2020 - Present",
                title: "SKT Client Mobile App (iOS)",
                thumbnail: "skt-ios",
                description: "Lead Software Engineer of Team Titan. Focused on mobile app development using hybrid frameworks build with ReactJS"),
        
        Project(url: URL(string: "https://play.google.com/store/apps/details?id=com.skt.clientmobileapp.wonders")!,
                date: "June 2020 - Present",
                title: "SKT Client Mobile App (Android)",
                thumbnail: "skt-android",
                description: "Lead Software Engineer of Team Titan. Focused on mobile app development using hybrid frameworks build with ReactJS"),
        
        Project(url: URL(string: "https://www.aeronology.travel/")!,
                date: "November 2019",
                title: "Aeronology Web Application",
                thumbnail: "aeronology",
                description: "Outsourced Front-End ReactJS Developer to developed advanced, fancy and complex UI with modern technology"),
        
        Project(url: URL(string: "https://shping.com/")!,
                date: "January 2018 - July 2019",
                title: "Shping Web Application",
                thumbnail: "shping",
                description: "Outsourced Front-End ReactJS Developer to developed advanced and complex admin dashboard UI with modern technology"),
        
        Project(url: URL(string: "https://shanemhatton-web.vercel.app/")!,
                date: "September 2018 - October 2019",
                title: "Automated SMS Web Application",
                thumbnail: "shanematton-sms",
                description: ""),
        
        Project(url: URL(string: "https://staging.wherestheyo.com/signin")!,
                date: "September 2018 - October 2019",
                title: "Yosisan Web Application",
                thumbnail: "yosisan",
                description: "An app where you can find some places that is not restricted for the people who needs smoke"),
        
        Project(url: URL(string: "https://jami.ph/")!,
                date: "November 2016 - April 2018",
                title: "Jami PH Web Application",
                thumbnail: "jami",
                description: "A WordPress CMS application. A Japanese Web App journal"),
        
        Project(url: URL(string: "http://www.philippinehotelreservations.com/")!,
                date: "April 2015 - November 2015",
                title: "Philippine Hotel Reservations Service",
                thumbnail: "phrs",
                description: "Web application for travel industry where you can select any places you want and book it!")
    ]
}
