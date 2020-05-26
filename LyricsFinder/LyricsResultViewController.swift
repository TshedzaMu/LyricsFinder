//
//  LyricsResultViewController.swift
//  LyricsFinder
//
//  Created by mac on 2020/05/26.
//  Copyright © 2020 Tshedza Musandiwa. All rights reserved.
//

import UIKit

class LyricsResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lyricsCell = tableView.dequeueReusableCell(withIdentifier: "CID_LyricsCell") as! LyricsTableViewCell
        return lyricsCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000.00
    }
    


}
