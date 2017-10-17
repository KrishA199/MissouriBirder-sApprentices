//
//  BirdViewController.swift
//  MissouriBirder'sApprentice
//
//  Created by Mucherla,Veera Kishon Kumar on 10/16/17.
//  Copyright © 2017 Mucherla,Veera Kishon Kumar. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {

    var bird : Bird!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet var dateLBL: UILabel!
    
    @IBOutlet weak var sightingsTF: UITextField!
    
    @IBOutlet weak var birdImageIV: UIImageView!
    
    @IBAction func updateSightingsBTN(_ sender: Any) {
        if let numSightings = Int(sightingsTF.text!){
        if(sightingsTF.text != nil && numSightings >= 0){
            bird.updateNumSightings(sightings: numSightings)
        }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = (bird.location?.latitude)!
        let longitude = (bird.location?.longitude)!
        locationLBL.text = "\(latitude , longitude)"
        dateLBL.text = "\((bird.dateSighted)!)"
        sightingsTF.text = "\((bird.numberOfSightings)!)"
        let birdName:String = "\(bird.name!).jpg)"
        let birdImage:UIImage = UIImage(named: birdName)!
        birdImageIV.image = birdImage
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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


