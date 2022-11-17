//
//  ViewController.swift
//  Animations
//
//  Created by DISMOV on 16/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    var animationView : LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "fish")
        fish.center = self.view.center
        animationView = fish.animationView
        view.backgroundColor = .cyan
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    @IBAction func indexChange(_ sender: Any) {
        animationView?.removeFromSuperview()
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "fish")
                fish.center = self.view.center
                animationView = fish.animationView
                view.backgroundColor = .cyan
            case 1:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "rocket_1")
                fish.center = self.view.center
                animationView = fish.animationView
            view.backgroundColor = .systemYellow
            case 2:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "rocket_2")
                fish.center = self.view.center
                animationView = fish.animationView
            view.backgroundColor = .magenta
            default:
                break
            }
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
}

