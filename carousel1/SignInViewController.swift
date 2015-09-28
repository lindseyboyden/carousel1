//
//  SignInViewController.swift
//  carousel1
//
//  Created by Lindsey Boyden on 9/26/15.
//  Copyright © 2015 Lindsey Boyden. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    var initialY: CGFloat!
    let offset: CGFloat! = -50
    

    @IBAction func dismissButton(sender: AnyObject) {
        
        //dismissViewControllerAnimated(true, completion:)
    }
    @IBOutlet weak var hiddenbutton: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hiddenbutton.enabled = false
        
        loader.hidden = true
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signinbutton(sender: AnyObject) {
        
        if emailtext.text == "" {
            
            let alertController = UIAlertController(title: "oh no", message: "email is empty", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
                
                }
            // add the OK action to the alert controller
            
            alertController.addAction(OKAction)

            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting

                
                }
            
        }
        else if passwordtext.text == "" {
            
            let alertController = UIAlertController(title: "oh no", message: " password is empty", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
                
                }
            // add the OK action to the alert controller
            
            alertController.addAction(OKAction)
            
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
                }
        }
            
        else if (emailtext.text == "email") && (passwordtext.text == "password") {
            
            print("yatzee!")
            
            loader.hidden = false
            
            self.performSegueWithIdentifier("firstSegue", sender: self)
            
        }
        else {
            
            loader.hidden = false
            
            self.delay(2) {
                
                self.loader.hidden = true
                
                let alertController = UIAlertController(title: "oh no", message: " email and password don't match", preferredStyle: .Alert)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                    
                    }
                // add the OK action to the alert controller
                
                alertController.addAction(OKAction)
                
                
                self.presentViewController(alertController, animated: true){
                    // optional code for what happens after the alert controller has finished presenting
                    }
                
            }
        
    
    }
    }
    

    func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
    }


    func keyboardWillShow(notification: NSNotification!) {
        
        
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
