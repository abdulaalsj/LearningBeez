//
//  EmotionsFlashCards.swift
//  LearningBeez
//
//  Created by Sumer Abdulaal on 4/2/17.
//  Copyright © 2017 Sumer Abdulaal. All rights reserved.
//

import UIKit
import Foundation

class EmotionsFlashCards: UIViewController {
    @IBOutlet weak var picture: UIImageView!
    
    let imageTitle:String = "emotion_"
    var taps:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        let pictureName:String =  self.imageTitle + String(self.taps)

        
        if #available(iOS 10.0, *) {
                self.picture.image = UIImage(named: pictureName )
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
        if(self.taps >= 2 ){
            self.taps = 0
        }else {
            self.taps = self.taps + 1
        }
        
        let tapString: String = String(self.taps)
        self.picture.image = UIImage(named: self.imageTitle + tapString)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
