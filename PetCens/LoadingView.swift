//
//  LoadingView.swift
//  PetCens
//
//  Created by Infraestructura on 29/10/16.
//  Copyright © 2016 JanZelaznog. All rights reserved.
//

import UIKit

class LoadingView: UIView {

    static func loadingInView(unView: UIView, mensaje: NSString)->LoadingView{
        let loading = LoadingView(frame: unView.bounds)
        loading.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        unView.addSubview(loading)
        let label = UILabel(frame: CGRectMake(0,0,300,50))
        label.text = (mensaje as String)
        label.textColor = UIColor.whiteColor()
        label.textAlignment = .Center
        loading.addSubview(label)
        label.center = loading.center
        let actInd = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
        actInd.center = loading.center
        actInd.frame = CGRectOffset(actInd.frame, 0.0, -55.0)
        loading.addSubview(actInd)
        actInd.startAnimating()
        return loading
    }
    
    func removeLoading(){
        removeFromSuperview()
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
