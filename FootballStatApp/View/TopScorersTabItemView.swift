//
//  TopScorersTabItemView.swift
//  FootballStatApp
//
//  Created by IM Student on 2025-06-22.
//

import SwiftUI
import XCAFootballDataClient

struct TopScorersTabItemView: View {
    @State var selectedCompetition: Competition?
        
        var body: some View {
            NavigationSplitView {
                List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompetition) {
                    Text($0.name)
                }.navigationTitle("World ⚽️ Scorers")
            } detail: {
                if let selectedCompetition {
                    TopScorersTableView(competition: selectedCompetition)
                        .id(selectedCompetition)
                } else {
                    Text("Select a competition")
                }
            }
        }
}

#Preview {
    TopScorersTabItemView()
}
