//
//  Category.swift
//  ProjectViolator
//
//  Created by Hardmando on 04.05.2023.
//

import Foundation

struct CategoryCard {
    var title: String
    var amount: Float
}

extension CategoryCard {
    static let sampleData: [CategoryCard] =
    [
        CategoryCard(title: "Food",
                     amount: 0
                     ),
        CategoryCard(title: "Household Expenses",
                     amount: 0
                     ),
        CategoryCard(title: "Destructive Entertaiment",
                     amount: 0
                     ),
        CategoryCard(title: "Destructive Entertaiment",
                     amount: 0
                     )
    ]
}
