//
//  FoodRow.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 31.03.2024.
//

import SwiftUI

struct FoodRow: View {
  var food = FoodModel()
  var body: some View {
    VStack(alignment: .leading){
      HStack{
        Image(food.name!.lowercased())
          
          .resizable()
          .frame(width: 100,height: 100)

        VStack(spacing:30){
          Text(food.name!)
            .font(.headline)

          Text(food.price!)
            .font(.subheadline)
            .foregroundStyle(.blue)
        }
      }
    }
  }
}
