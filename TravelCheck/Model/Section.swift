//
//  Section.swift
//  TravelCheck
//
//  Created by Sergio Herrera on 6/23/24.
//

import Foundation

struct Section: Identifiable {
    let id: String
    var name: String
    var items: [Item]
    var isCompleted: Bool {
        get {
            items.allSatisfy { $0.isCompleted }
        }
        set {
            if newValue {
                items = items.map { Item(id: $0.id, description: $0.description, isCompleted: newValue) }
            }
        }
    }

    init(id: String = UUID().uuidString, name: String, items: [Item] = []) {
        self.id = id
        self.name = name
        self.items = items
    }
}

struct Item: Identifiable {
    let id: String
    var description: String
    var isCompleted: Bool

    init(id: String = UUID().uuidString, description: String = "", isCompleted: Bool = false) {
        self.id = id
        self.description = description
        self.isCompleted = isCompleted
    }
}

var mockSections = [
    Section(name: "Clothes",
            items: [
                Item(description: "vans"),
                Item(description: "flannel long sleeve"),
                Item(description: "blue jeans"),
    ]),
    Section(name: "Bathroom",
            items: [
                Item(description: "toothbrush"),
                Item(description: "comb"),
                Item(description: "cologne"),
    ])
]
