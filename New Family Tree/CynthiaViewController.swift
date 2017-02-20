//
//  CynthiaViewController.swift
//  New Family Tree
//
//  Created by Jason on 2/19/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class CynthiaViewController: UIViewController {
    
    @IBAction func CynthiaButtonPressed(sender: UIButton){
        let alert = UIAlertController(title: "Cynthia Button Pressed", message: "Cynthia married Robin who was a friend of her father. Together they had a child named Morgan who would specialize in tactics like her father.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Done reading", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
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
