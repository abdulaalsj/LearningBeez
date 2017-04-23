//
//  HoneycombViewController.swift
//  LearningBeez
//
//  Created by Sumer Abdulaal on 4/2/17.
//  Copyright © 2017 Sumer Abdulaal. All rights reserved.
//

import UIKit
import FirebaseDatabase

class HoneycombViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    let data:[String]=["Hello"]
    var ref: FIRDatabaseReference!
    
    
    var imagePicker: UIImagePickerController!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView.dataSource = self
        self.collectionView.backgroundColor = UIColor.clear
        self.collectionView.backgroundView = UIView.init(frame: CGRect.zero)
        
        ref = FIRDatabase.database().reference()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : Cell = collectionView.dequeueReusableCell(withReuseIdentifier: "honeyComb", for: indexPath) as! Cell
        
        return cell
    }

    
    
    
    /*
     Start picture methods
 
    
    @IBAction func didPressTakePicture(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        
        self.present(imagePicker, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    
    
     end picture methods
     */

    

}

