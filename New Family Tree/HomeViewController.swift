//
//  HomeViewController.swift
//  New Family Tree
//
//  Created by Jason on 2/19/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private var cordeliaViewController: CordeliaViewController!
    private var chercheViewController: ChercheViewController!
    private var cynthiaViewController: CynthiaViewController!
    private var lissaViewController: LissaViewController!
    private var sumiaViewController: SumiaViewController!
    private func switchViewController(from fromVC: UIViewController?,
                                      to toVC:UIViewController?){
        if fromVC != nil {
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        if toVC != nil {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
        
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem){
        // Create the new view controller, if required
        if chercheViewController?.view.superview == nil {
            if chercheViewController == nil {
                chercheViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Cherche")
                    as! ChercheViewController
            }
        } else if cordeliaViewController?.view.superview == nil {
            if cordeliaViewController == nil {
                cordeliaViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Cordelia")
                    as! CordeliaViewController
            } }else if cynthiaViewController?.view.superview == nil {
            if cynthiaViewController == nil {
                cynthiaViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Cynthia")
                    as! CynthiaViewController
            } }else if lissaViewController?.view.superview == nil {
            if lissaViewController == nil {
                lissaViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Lissa")
                    as! LissaViewController
            } }else if sumiaViewController?.view.superview == nil {
            if sumiaViewController == nil {
                sumiaViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Sumia")
                    as! SumiaViewController
            }
        }
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        // Switch View Controllers
        if cordeliaViewController != nil
            && cordeliaViewController!.view.superview != nil {
            chercheViewController.view.frame = view.frame
            switchViewController(from: cordeliaViewController,
                                 to: chercheViewController)
        }
        else if chercheViewController != nil
            && chercheViewController!.view.superview != nil {
            sumiaViewController.view.frame = view.frame
            switchViewController(from: chercheViewController,
                                 to: lissaViewController)
        }
        else if lissaViewController != nil
            && lissaViewController!.view.superview != nil {
            sumiaViewController.view.frame = view.frame
            switchViewController(from: lissaViewController,
                                 to: sumiaViewController)
        }
        else if sumiaViewController != nil
            && sumiaViewController!.view.superview != nil {
            cynthiaViewController.view.frame = view.frame
            switchViewController(from: sumiaViewController,
                                 to: cynthiaViewController)
        }
        else if cynthiaViewController != nil
            && cynthiaViewController!.view.superview != nil {
            cordeliaViewController.view.frame = view.frame
            switchViewController(from: cynthiaViewController,
                                 to: cordeliaViewController)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        cordeliaViewController =
            storyboard?.instantiateViewController(withIdentifier: "Cordelia")
            as! CordeliaViewController
        cordeliaViewController.view.frame = view.frame
        switchViewController(from: nil, to: cordeliaViewController) // helper method
        
        if chercheViewController == nil {
            chercheViewController =
                storyboard?.instantiateViewController(withIdentifier: "Cherche")
                as! ChercheViewController
        }
        if cynthiaViewController == nil {
            cynthiaViewController =
                storyboard?.instantiateViewController(withIdentifier: "Cynthia")
                as! CynthiaViewController
        }
        if lissaViewController == nil {
            lissaViewController =
                storyboard?.instantiateViewController(withIdentifier: "Lissa")
                as! LissaViewController
        }
        if sumiaViewController == nil {
            sumiaViewController =
                storyboard?.instantiateViewController(withIdentifier: "Sumia")
                as! SumiaViewController
        }
        else if cordeliaViewController?.view.superview == nil {
            if cordeliaViewController == nil {
                cordeliaViewController =
                    storyboard?.instantiateViewController(withIdentifier: "Cordelia")
                    as! CordeliaViewController
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        if cordeliaViewController != nil
            && cordeliaViewController!.view.superview == nil {
            cordeliaViewController = nil
        }
        if chercheViewController != nil
            && chercheViewController!.view.superview == nil {
            chercheViewController = nil
        }
        if cynthiaViewController != nil
            && cynthiaViewController!.view.superview == nil{
            cynthiaViewController = nil
        }
        if lissaViewController != nil
            && lissaViewController!.view.superview == nil{
            lissaViewController = nil
        }
        if sumiaViewController != nil
            && sumiaViewController!.view.superview == nil{
            sumiaViewController = nil
        }
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
