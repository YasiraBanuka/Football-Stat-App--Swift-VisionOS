//
//  FootballStatAppApp.swift
//  FootballStatApp
//
//  Created by IM Student on 2025-06-22.
//

import SwiftUI

let apiKey = "884ff00b488a4f9299d6896049605335"

@main
struct FootballStatAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StandingsTabItemView()
                    .tabItem { Label("Standings", systemImage: "table.fill") }
                
                TopScorersTabItemView()
                    .tabItem { Label("Top Scorers", systemImage: "soccerball.inverse") }
            }
        }
    }
}
