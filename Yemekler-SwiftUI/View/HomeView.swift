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
          veritabaniKopyala()
          viewModel.loadList()

      }
    }
  }
    func veritabaniKopyala(){
        let bundle = Bundle.main.path(forResource: "yemek", ofType: ".sqlite")
        
        let veritabaniYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let hedefYol = URL(fileURLWithPath: veritabaniYolu).appendingPathComponent("yemek.sqlite")
        
        let fm = FileManager.default
        
        if fm.fileExists(atPath: hedefYol.path){
            print("Veritabanı daha önce kopyalandı.")
        }else{
            do{
                try fm.copyItem(atPath: bundle!, toPath: hedefYol.path)
            }catch{
                print(error.localizedDescription)
            }
        }
        
    }
}

#Preview {
  HomeView()
}
