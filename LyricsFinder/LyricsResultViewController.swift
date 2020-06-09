//
//  LyricsResultViewController.swift
//  LyricsFinder
//
//  Created by mac on 2020/05/26.
//  Copyright © 2020 Tshedza Musandiwa. All rights reserved.
//

import UIKit

class LyricsResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    fileprivate var lyricsResultViewModel = LyricsResultViewModel()
    @IBOutlet weak var tableView: UITableView!
    var artistName: String = ""
    var songName: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
          
        print("singer name: " + artistName)
        print("Song name: " + songName)
                  
        lyricsResultViewModel.getLyrics(artistName:artistName, nameOfSong:songName) {
            print("Got them")
            self.tableView.reloadData()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  lyricsResultViewModel.lyricsResults != nil {
            return 1
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lyricsCell = tableView.dequeueReusableCell(withIdentifier: "CID_LyricsCell") as! LyricsTableViewCell
        
        lyricsCell.artistNameLabel.text = "Name of artist: " + artistName
        lyricsCell.nameOfSongLabel.text = "Song name: " + artistName
        lyricsCell.songLyricsLabel.text = "Lyrics: \n\n" + lyricsResultViewModel.lyricsResults.lyrics!
        
        return lyricsCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 2000.00
    }

}
