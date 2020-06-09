//
//  LyricsResultViewModel.swift
//  LyricsFinder
//
//  Created by mac on 2020/05/27.
//  Copyright © 2020 Tshedza Musandiwa. All rights reserved.
//

import Foundation


struct LyricsModel: Codable {
   let  lyrics: String?
}

class LyricsResultViewModel{
    
    var lyricsResults: LyricsModel!
    
    func getLyrics( artistName:String, nameOfSong:String, completed: @escaping () -> ()){
        

          let url = URL(string: "https://api.lyrics.ovh/v1/" + artistName + "/" + nameOfSong)!


          let task = URLSession.shared.dataTask(with: url) { data, response, error in


            guard error == nil else {
              print ("error: \(error!)")
              return
            }

            guard let data = data else {
              print("No data")
              return
            }

              print(data.count)
              self.lyricsResults = try? JSONDecoder().decode(LyricsModel.self, from: data)

             DispatchQueue.main.async {
                 completed()
                
                print(self.lyricsResults.lyrics as Any)
             }
          }
           task.resume()
    }
}
