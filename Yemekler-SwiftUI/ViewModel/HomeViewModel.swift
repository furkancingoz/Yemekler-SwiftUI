//
//  HomeViewModel.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 4.04.2024.
//

import Foundation

class HomeViewModel : ObservableObject {
    
   @Published var foodList = [FoodModel]()
    
    func loadList() {
        var list = [FoodModel]()
//        let f = FoodModel(name: "Ayran", price: "8₺")
//        let f1 = FoodModel(name: "Baklava", price: "70₺")
//        let f2 = FoodModel(name: "Fanta", price: "10₺")
//        let f3 = FoodModel(name: "Kadayif", price: "50₺")
//        let f4 = FoodModel(name: "Kofte", price: "60₺")
//        let f5 = FoodModel(name: "Makarna", price: "55₺")
//
//        list.append(f)
//        list.append(f1)
//        list.append(f2)
//        list.append(f3)
//        list.append(f4)
//        list.append(f5)

        foodList = list
    }
}
