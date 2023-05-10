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
    var pic: String
}

extension CategoryCard {
    static let categoryData: [CategoryCard] =
    [
        CategoryCard(title: "Food",
                     amount: 0,
                     pic: "cart.fill"
                     ),
        CategoryCard(title: "Household Expenses",
                     amount: 0,
                     pic: "house.fill"
                     ),
        CategoryCard(title: "Entertaiment",
                     amount: 1,
                     pic: "gamecontroller.fill"
                     ),
        CategoryCard(title: "Destructive",
                     amount: 0,
                     pic: "exclamationmark.octagon.fill"
                    ),
        CategoryCard(title: "Useless",
                     amount: 3,
                     pic: "exclamationmark.octagon.fill"
                    ),
        CategoryCard(title: "Unexpected",
                     amount: 0,
                     pic: "questionmark.circle.fill"
                     )
    ]
}
