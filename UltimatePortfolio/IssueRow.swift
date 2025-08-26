//
//  IssueRow.swift
//  UltimatePortfolio
//
//  Created by Luke Inger on 26/08/2025.
//

import SwiftUI

struct IssueRow: View {
    
    @EnvironmentObject var dataController: DataController
    @ObservedObject var issue: Issue
    
    var body: some View {
        NavigationLink(value: issue){
            HStack{
                Image(systemName: "exclamationmark.circle")
                    .imageScale(.large)
                    .opacity(issue.priority == 2 ? 1 : 0)
            }
            
            VStack(alignment: .leading){
                Text(issue.issueTitle)
                    .font(.headline)
                    .lineLimit(1)
                
                Text("No tags")
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }
            
            Spacer()
            
            VStack(alignment: .trailing){
                Text(issue.issueCreationDate.formatted(date: .numeric, time: .omitted))
                    .font(.subheadline)
                
                if issue.completed {
                    Text("Closed")
                        .font(.body.smallCaps())
                }
                
            }
            .foregroundStyle(.secondary)
            
        }
    }
}

#Preview {
    IssueRow(issue: .example)
}
