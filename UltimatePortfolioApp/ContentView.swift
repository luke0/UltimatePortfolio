//
//  ContentView.swift
//  UltimatePortfolioApp
//
//  Created by Luke Inger on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ProjectsView(showClosedProjects: false)
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Open")
                }
            
            ProjectsView(showClosedProjects: true)
                .tabItem{
                    Image(systemName: "checkmark")
                    Text("Closed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var dataController = DataController.preview
    
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
    }
}
