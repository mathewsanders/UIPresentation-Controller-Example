//
//  DestinationController.swift
//  PresentationController
//
//  Created by Mathew Sanders on 9/12/15.
//  Copyright © 2015 Mat. All rights reserved.
//

import UIKit

class DestinationController: UIViewController, UIViewControllerTransitioningDelegate {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = self
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        return HalfScreenPresentation(presentedViewController: presented, presenting: presenting)
        
    }
    
    /*
    // implement these methods if you don't want to use the default animation transition
    // you'll need to return an object that meets `UIViewControllerAnimatedTransitioning` requirements which is similar to the perform method in a custom segue.
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        <#code#>
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        <#code#>
    }*/

}

// this is a super simple subclass of UIPresentationController 
// where the only method overridden is `frameOfPresentedViewInContainerView`

class HalfScreenPresentation: UIPresentationController {

    override var frameOfPresentedViewInContainerView : CGRect {
        
        let containerFrame = self.containerView!.frame
        
        return CGRect(x: 0, y: containerFrame.height/2, width: containerFrame.width, height: containerFrame.height/2)
        
    }
    
    /*
    // implement this method to add extra views, e.g. a semi-transparent 'dimmer' view
    override func presentationTransitionWillBegin() {
    <#code#>
    }
    
    
    // implement this method to remove any extra views
    override func presentationTransitionDidEnd(completed: Bool) {
        <#code#>
    }
    
    // implement this method to respond to change in size (e.g. screen rotation)
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        <#code#>
    }*/
    
}
