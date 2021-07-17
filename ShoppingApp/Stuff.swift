//
//  Stuff.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import Foundation
enum Page {
    case page1
    case page2
    case page3
    case page4
}
class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}

class Total: ObservableObject {
    @Published var total: Int = 0
}
var pizzaTotal = 0
var breadloafTotal = 0
var pieTotal = 0
var pumpkinTotal = 0
var corncobTotal = 0
var potatosackTotal = 0
