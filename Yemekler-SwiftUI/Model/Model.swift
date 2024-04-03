//
//  Model.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 31.03.2024.
//

import Foundation

class FoodModel : Identifiable {
  var name : String?
  var price : String?

  //var imageName : String yaparak türkçe karakter ve .lowercased yapmadan direkt olarak resim adı girilebilir

  init(){}

  init(name: String, price: String) {
    self.name = name
    self.price = price
  }

}
