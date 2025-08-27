//
//  DetailView.swift
//  UltimatePortfolio
//
//  Created by Luke Inger on 05/08/2025.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        VStack{
            if let issue = dataController.selectedIssue {
                IssueView(issue: issue)
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView()
}
