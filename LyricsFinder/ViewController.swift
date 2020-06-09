//
//  ViewController.swift
//  LyricsFinder
//
//  Created by mac on 2020/05/25.
//  Copyright © 2020 Tshedza Musandiwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artistNameTextField: UITextField!
    @IBOutlet weak var songNameTextField: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func searchLyricsButton(_ sender: Any) {
        
        let lyricsResultViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "VID_LYRICS_RESULT") as! LyricsResultViewController
        lyricsResultViewControllerObj.artistName = artistNameTextField.text ?? "this is default value"
        print(lyricsResultViewControllerObj.artistName)
        lyricsResultViewControllerObj.songName = songNameTextField.text ?? "this is default value"
        
           navigationController?.pushViewController(lyricsResultViewControllerObj, animated: true)
        
        
        
    }
    
    


}

