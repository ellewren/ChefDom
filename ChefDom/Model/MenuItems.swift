//
//  MenuItems.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/4/23.
//

import SwiftUI
import Foundation

struct MenuItem: Identifiable {
    var id: Int
    var dish: String
    var description: String
    var image: Image
    var price: Double
}

struct Menu {
    
    static let seafoodBoil  = MenuItem(id: 1, dish: "Seafood Boil",
                                    description: "Immerse yourself in a medley of ocean treasures, featuring succulent shrimp, plump crab legs, tender mussels, and sweet corn, all generously seasoned with a blend of aromatic spices. ",
                                    image: Image("dish1"),
                                    price: 69.99)
    static let pineappleTeriyaki = MenuItem(id: 2, dish: "Pineapple Chicken Teriyaki",
                                  description: "Transport your taste buds to a tropical paradise with our Pineapple Teriyaki . Savor the perfect harmony of sweet and savory as succulent pieces of tender meat are glazed in our signature teriyaki sauce infused with the natural sweetness of fresh pineapple.",
                                  image: Image("dish2"),
                                  price: 49.99)
    static let soulFood = MenuItem(id: 3, dish: "Soul Food Plate",
                                    description: "A nostalgic journey awaits as you savor a hearty serving of slow-cooked collard greens, rich and smoky baked macaroni and cheese, golden-fried chicken with a crispy exterior and juicy interior, and a side of fluffy cornbread. ",
                                    image: Image("dish3"),
                                    price: 19.95)
    static let shrimpSalmon = MenuItem(id: 4, dish: "Shrimp & Salmon",
                                   description: "Our Salmon, Shrimp, and Asparagus Plate is a culinary masterpiece that brings together a perfectly seared fillet of salmon, succulent shrimp, and vibrant asparagus spears. ",
                                   image: Image("dish4"),
                                   price: 14.99)
    static let soulCupcake = MenuItem(id: 5, dish: "Soulful Bliss Cupcake",
                                   description: "This delightful treat captures the essence of soul food in a single, heavenly bite. Cupcake style cornbread iced with mashedpotatoes and fried chicken to top",
                                   image: Image("dish5"),
                                   price: 14.99)
    static let pizzaRolls = MenuItem(id: 6, dish: "Pizza Rolls",
                                  description: "Elevate your snacking experience with our Pizza Pockets Bites. These savory, bite-sized delights are filled with a medley of melted cheese, zesty tomato sauce, and your favorite pizza toppings, all encased in a golden, flaky crust.",
                                  image: Image("dish6"),
                                  price: 9.99)
    static let chickenWaffles = MenuItem(id: 7, dish: "Chicken & Waffles",
                                    description: "Experience the best of sweet and savory with our Southern Comfort Chicken & Waffles. Indulge in perfectly fried, crispy chicken perched atop a bed of fluffy, golden waffles. ",
                                    image: Image("dish7"),
                                    price: 19.99)
    static let phillyCheese = MenuItem(id: 8, dish: "Cheesesteak Fusion Rolls",
                                    description: "Experience a delightful twist on a classic favorite with our Cheesesteak Fusion Rolls. Thinly sliced, perfectly seasoned beefsteak meets the ooey-gooey goodness of melted cheese, all expertly rolled into a crispy egg roll shell. ",
                                    image: Image("dish8"),
                                    price: 19.99)
    static let cheeseCake = MenuItem(id: 9, dish: "Berry Bliss Cheesecake Bowl",
                                   description: "Delight your senses with our Berry Bliss Cheesecake Bowl, a delectable fusion of creamy cheesecake goodness and the vibrant freshness of assorted seasonal fruits. ",
                                   image: Image("dish9"),
                                   price: 14.99)
    
    static let menuItems = [seafoodBoil , pineappleTeriyaki, soulFood, shrimpSalmon , soulCupcake, pizzaRolls, chickenWaffles, phillyCheese, cheeseCake]
}
