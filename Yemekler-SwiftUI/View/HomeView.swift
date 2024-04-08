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
      }.navigationTitle("Food List")
      .onAppear{
          viewModel.loadList()

      }
    }
  }
    func veritabaniKopyala() {
        let bundle = Bundle.main.path(forResource: "yemekler", ofType: ".sqlite")
        
        let veritabaniYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let hedefYol = URL(fileURLWithPath: veritabaniYolu).appendingPathComponent("yemekler.sqlite")
        
        let fm = FileManager.default
        
        if fm.fileExists(atPath: hedefYol.path) {
            print("veri tabanı daha önce kopyaladın ya ??__?? ")
        } else {
            do {
                try fm.copyItem(atPath: bundle!, toPath: hedefYol.path)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
  HomeView()
}
