//
//  ChercheViewController.swift
//  New Family Tree
//
//  Created by Jason on 2/19/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class ChercheViewController: UIViewController {

        
    @IBAction func ChercheButtonPressed(sender:UIButton){
            let alert = UIAlertController(title: "Cherche View Button Pressed",
                                          message: "Cherche is married to Virion whom she surved under when he was duke of Rosanne. Together they have a son named Gerome, who inherited his mother's Wyvern when he traveled back in time. ",
                                          preferredStyle: .alert)
            let action = UIAlertAction(title: "Done reading", style: .default,
                                       handler: nil)
            alert.addAction(action)
            present(alert, animated: true,completion: nil)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
