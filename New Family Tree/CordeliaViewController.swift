//
//  CordeliaViewController.swift
//  New Family Tree
//
//  Created by Jason on 2/19/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class CordeliaViewController: UIViewController {

    @IBAction func CordeliaButtonPressed(sender:UIButton){
        let alert = UIAlertController(title: "Cordelia View Button Pressed",
                                      message: "After the war Lon'qu returned to Regna Ferox. She and her husband had a daughter named Severa. She has a sharp tongue and an inferiority complex which she developed after being compared to her mother in the future.",
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
