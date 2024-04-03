//
//  ContentView.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 31.03.2024.
//

import SwiftUI

struct HomeView: View {

 @ObservedObject var viewModel = HomeViewModel()
   
  var body: some View {
    NavigationStack {
      List{
          ForEach(viewModel.foodList) { food in
          NavigationLink(destination: DetailView(food: food)){
            FoodRow(food: food)
          }
        }
      }.onAppear{
          viewModel.loadList()

      }.navigationTitle("Food List")
    }
  }
}

#Preview {
  HomeView()
}
