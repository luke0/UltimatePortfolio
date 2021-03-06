//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Luke Inger on 26/07/2021.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    
    @StateObject var dataController: DataController
    
    init(){
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
