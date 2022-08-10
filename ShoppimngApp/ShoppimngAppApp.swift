//
//  ShoppimngAppApp.swift
//  ShoppimngApp
//
//  Created by Роман Шабардин on 07/08/2022.
//

import SwiftUI

@main
struct ShoppimngAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
