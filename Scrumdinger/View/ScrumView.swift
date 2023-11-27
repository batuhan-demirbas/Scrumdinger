//
//  Scrums.swift
//  Scrumdinger
//
//  Created by Batuhan on 27.11.2023.
//

import SwiftUI

struct ScrumView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    ScrumView(scrums: DailyScrum.sampleData)
}
