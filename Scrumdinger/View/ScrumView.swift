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
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumView(scrums: DailyScrum.sampleData)
}
