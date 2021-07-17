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
    case page5
    case page6
}
class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}

class Total: ObservableObject {
    @Published var total: Int = 0
}
