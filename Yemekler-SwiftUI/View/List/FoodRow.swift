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
        Image(food.yemek_resim_adi!)
          
          .resizable()
          .frame(width: 100,height: 100)

        VStack(spacing:30){
          Text(food.yemek_adi!)
            .font(.headline)

            Text("\(food.yemek_fiyat!)₺")
            .font(.subheadline)
            .foregroundStyle(.blue)
        }
      }
    }
  }
}
