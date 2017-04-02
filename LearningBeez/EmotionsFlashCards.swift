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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var pictureName:String =  self.imageTitle + "0"

        
        if #available(iOS 10.0, *) {
            let timer:Timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (time) in
                
                
                self.picture.image = UIImage(named: pictureName )
            }
        } else {
            // Fallback on earlier versions
            
            print("NOT AVAILABLE")
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
