//
//  NoIssueView.swift
//  UltimatePortfolio
//
//  Created by Luke Inger on 27/08/2025.
//

import SwiftUI

struct NoIssueView: View {
    
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No issue selected")
            .font(.title)
            .foregroundStyle(.secondary)
        Button("Add Issue") {
        
        }
    }
}

#Preview {
    NoIssueView()
}
