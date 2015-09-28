//
//  TutorialViewController.swift
//  carousel1
//
//  Created by Lindsey Boyden on 9/25/15.
//  Copyright © 2015 Lindsey Boyden. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
  
    @IBOutlet weak var tryButton: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        scrollView.delegate = self
        
        
        tryButton.alpha = 0
        
        
       

        // Do any additional setup after loading the view.
    }
   
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if scrollView.contentOffset.x >= 960 {
            self.tryButton.alpha = 1
            print("last page")
            print(tryButton.center.x)
            print(tryButton.center.y)
        }
        
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
