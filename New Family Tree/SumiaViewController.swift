//
//  SumiaViewController.swift
//  New Family Tree
//
//  Created by Jason on 2/19/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class SumiaViewController: UIViewController {
    
    @IBAction func SumiaButtonPressed(sender: UIButton){
        let alert = UIAlertController(title: "Sumia Button Pressed", message: "Sumia got to marry the person whom she had loved for the longest time, the current exalt of Ylisse Chrom. They had two children, Lucina and Cynthia. Lucina inherited her father's sword and learned from his fighting style. Cynthia was clumsy like her mother, but always brought happiness wherever she went. They often played with their Aunt Lissa and cousin, Owain.", preferredStyle: .alert)
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
