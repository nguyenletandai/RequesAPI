//
//  ViewController.swift
//  RequesAPI
//
//  Created by daicudu on 12/25/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageContainer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = URL(string: "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")!
        let task = URLSession.shared.dataTask(with: imageURL) {(data, responds, error) in
            if error == nil {
                let loadedImage = UIImage(data: data!)
                self.imageContainer.image = loadedImage
            }
        }
        task.resume()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

