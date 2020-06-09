//
//  LyricsViewController.swift
//  LyricsFinder
//
//  Created by mac on 2020/06/01.
//  Copyright © 2020 Tshedza Musandiwa. All rights reserved.
//

import UIKit

class LyricsViewController: UIViewController {
    
    
    fileprivate var lyricsResultViewModel = LyricsResultViewModel()
    
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var lyricsLabel: UILabel!
    
    var artistName: String = ""
    var songName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lyricsResultViewModel.getLyrics(artistName:artistName, nameOfSong:songName) {
            print("Got them")
            self.view.reloadInputViews()
        }
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
       if  lyricsResultViewModel.lyricsResults != nil {
            artistNameLabel.text = "Artist name " + artistName
            songNameLabel.text = "Song name " + songName
            lyricsLabel.text = "Lyrcis /n/n " + lyricsResultViewModel.lyricsResults.lyrics!
       }
    }
}
