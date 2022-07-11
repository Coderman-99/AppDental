//
//  AppDentalApp.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/20.
//

import SwiftUI

@main
struct AppDentalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContenView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
