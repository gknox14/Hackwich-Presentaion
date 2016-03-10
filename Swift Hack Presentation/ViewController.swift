//
//  ViewController.swift
//  Swift Hack Presentation
//
//  Created by Grace Knox on 3/9/16.
//  Copyright © 2016 Grace Knox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var images = [Image]()
    var random = 0
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var imageFour: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images.append(Image(newImage : UIImage(named: "queen.png")!))
        images.append(Image(newImage : UIImage(named: "king.png")!))
        images.append(Image(newImage : UIImage(named: "jack.png")!))
        images.append(Image(newImage : UIImage(named: "ace.png")!))
        imageOne.image = UIImage(named: "king.png")
        imageTwo.image = UIImage(named: "queen.png")
        imageThree.image = UIImage(named: "jack.png")
        imageFour.image = UIImage(named: "ace.png")
        
    }

    @IBAction func shuffleButton(sender: AnyObject) {
        selectImage() 
    }
    
    func selectImage() -> Image {
        random = Int(arc4random_uniform(4))
       imageOne.image = images[random].images
       return images[random]
   }


}

