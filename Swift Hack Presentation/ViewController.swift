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
        
        //card images
        images.append(Image(newImage : UIImage(named: "queen.png")!))
        images.append(Image(newImage : UIImage(named: "king.png")!))
        images.append(Image(newImage : UIImage(named: "jack.png")!))
        images.append(Image(newImage : UIImage(named: "ace.png")!))
        images.append(Image(newImage : UIImage(named: "two.png")!))
        images.append(Image(newImage : UIImage(named: "three.png")!))
        images.append(Image(newImage : UIImage(named: "four.png")!))
        images.append(Image(newImage : UIImage(named: "five.png")!))
        images.append(Image(newImage : UIImage(named: "six.png")!))
        images.append(Image(newImage : UIImage(named: "seven.png")!))
        images.append(Image(newImage : UIImage(named: "eight.png")!))
        images.append(Image(newImage : UIImage(named: "nine.png")!))
        images.append(Image(newImage : UIImage(named: "ten.png")!))
        
        //starting images for UIImageViews
        imageOne.image = UIImage(named: "two.png")
        imageTwo.image = UIImage(named: "three.png")
        imageThree.image = UIImage(named: "four.png")
        imageFour.image = UIImage(named: "five.png")
    }

    //gives each UIImageView a random image
    @IBAction func shuffleButton(sender: AnyObject) {
        selectImage(imageOne)
        selectImage(imageTwo)
        selectImage(imageThree)
        selectImage(imageFour)
    }
    
    //gets random cardImage
    func selectImage(cardImage : UIImageView) {
        random = Int(arc4random_uniform(13))
        cardImage.image = images[random].images
    }

}

