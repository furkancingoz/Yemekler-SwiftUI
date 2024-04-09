//
//  HomeViewModel.swift
//  Yemekler-SwiftUI
//
//  Created by Furkan Cingöz on 4.04.2024.
//

import Foundation

class HomeViewModel : ObservableObject {
    
   @Published var foodList = [FoodModel]()
    
    let db:FMDatabase?
    
    init(){
        let veritabaniYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let hedefYol = URL(fileURLWithPath: veritabaniYolu).appendingPathComponent("yemek.sqlite")
        db = FMDatabase(path: hedefYol.path)
    }
    
    func loadList(){
        db?.open()
        
        var liste = [FoodModel]()
        
        do{
            let result = try db!.executeQuery("SELECT * FROM yemek", values: nil)
            
            while result.next() {
                let yemek_id = Int(result.string(forColumn: "yemek_id"))!
                let yemek_adi = result.string(forColumn: "yemek_adi")!
                let yemek_resim_adi = result.string(forColumn: "yemek_resim_adi")!
                let yemek_fiyat = Int(result.string(forColumn: "Field4"))!
                
                let yemek = FoodModel(yemek_id: yemek_id, yemek_adi: yemek_adi, yemek_resim_adi: yemek_resim_adi, yemek_fiyat: yemek_fiyat)
                liste.append(yemek)
            }
            
            foodList = liste
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
