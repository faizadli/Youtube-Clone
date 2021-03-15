//
//  Model.swift
//  Youtube Clone
//
//  Created by faiz on 15/03/21.
//

import Foundation

class Model {
  
  // buat fungsi untuk ngambil data dari youtube API
  func getVideos() {
    // simpan url ke dalam variable
    let url = URL(string: Constants.API_URL)
    
    // kita cek urlnya kosong gak?
    guard url != nil else {
      return
    }
    
    // mendapatkan URLSession dari object
    let session = URLSession.shared
    
    // mendapatkan data dari URLSession
    let dataTask = session.dataTask(with: url!) { (data, response, error) in
      
      // cek kalo ada error
      if error != nil || data == nil {
        return
      }
      
    }
    
    // mulai bekerja
    dataTask.resume()
  }
}
