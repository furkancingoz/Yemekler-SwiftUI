//
//  DetailView.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 31.03.2024.
//

import SwiftUI

struct DetailView: View {

  var food = FoodModel()
    var body: some View {
      VStack{

        Image(food.yemek_adi!)
          .resizable()
          .frame(width: 250,height: 250)
          .padding()

        Text("\(food.yemek_fiyat!)")
          .font(.system(size: 50))
          .foregroundStyle(.blue)
          .padding()

        Button("Sipariş ver"){}
          .padding()
          .frame(width: 250,height: 50)
          .foregroundStyle(.white)
          .background(.blue)
          .cornerRadius(10)
          .padding()
      }
    }
}

#Preview {
    DetailView()
}
