//
//  EmotionsFlashCards.swift
//  LearningBeez
//
//  Created by Sumer Abdulaal on 4/2/17.
//  Copyright © 2017 Sumer Abdulaal. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class EmotionsFlashCards: UIViewController {
    @IBOutlet weak var picture: UIImageView!
    
    
  
    var playerArray = [AVAudioPlayer]()
    var player = AVAudioPlayer()
    var taps:Int = 0
    var URLSArray = [URL]()
    
    var emotions = ["emotion_0", "emotion_1", "emotion_2", "emotion_3", "emotion_4", "emotion_5", "emotion_6", "emotion_7", "emotion_8", "emotion_9" , "emotion_10" , "emotion_11"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    var URLSArray = [URL]()
        for i in 0...(emotions.count-1){
        
          let pathString = (Bundle.main.path(forResource: emotions[i], ofType: "mp3"))
          let StrToURL  = NSURL(string: pathString!)
          URLSArray.append(StrToURL! as URL)
        }

        do {
            playerArray = [AVAudioPlayer]()
            for i in 0...(emotions.count-1){
            try player = AVAudioPlayer(contentsOf: (URLSArray[i]))
            playerArray.append(player)
            }
            
            }
        
        catch
        
        {
            print(error)
        }
        
        


        // Do any additional setup after loading the view.
        
       

        let pictureName:String =  emotions[taps]
       
       

        
        if #available(iOS 10.0, *) {
                self.picture.image = UIImage(named: pictureName )
                playerArray[0].play()
            
           
            
            }
        else {
            // Fallback on earlier versions
            
            print("NOT AVAILABLE")
        }
        
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapScreen(_ sender: Any) {
        if(self.taps >= 11 ){
            self.taps = 0
            playerArray[self.taps].play()
        }else {
            self.taps = self.taps + 1
            playerArray[self.taps].play()
            
        }
        
        
        self.picture.image = UIImage(named: emotions[self.taps])
        
                }
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


