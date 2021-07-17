//
//  ShoppingAppApp.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

@main
struct ShoppingAppApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var toothpasteTotal = Total()
    @StateObject var tomatoSauceTotal = Total()
    @StateObject var noodlesTotal = Total()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, toothpasteTotal: toothpasteTotal, tomatoSauceTotal: tomatoSauceTotal, noodlesTotal: noodlesTotal)
        }
    }
}
