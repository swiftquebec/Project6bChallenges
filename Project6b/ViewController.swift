//
//  ViewController.swift
//  Project6b
//
//  Created by Gregory Leck on 2019-04-29.
//  Copyright © 2019 Gregory Leck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        // TAMIC: Don't make constraints for me -- we'll code them
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
//
//
//        for label in viewsDictionary.keys {
//            // Allow "view" contraints to be coded via VFL
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:
//                // VFL gets converted to autolayout contraints and then added to the view.
//                // H: horizontal
//                // |: edge of viewcontroller
//                // [\(label)]: place label (string value returns key from viewsDictionary
//                "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
//        }
//
//        // Vertical constraints
//
//        let metrics = ["labelHeight": 88]
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:
//            // V: Vertical
//            // -: space (10 pts by default)
//            // absence of pipe at the end means no forcing to the right edge
//            // Default priority for contraint is @1000
//            // (labelHeight@999) -> sets its priority to 999
//            // label2(label1) -> sets label2, etc., to same height as label1
//            "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
        
        
        
        
        // DEMONSTRATING ANCHORS (ABOVE CODE COMMENTED OUT)
        
        var previous: UILabel?
        
        for label in [label1, label2, label3, label4, label5] {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                // If there is no to previous label
                // In this case, will go below the notch of the Xr
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            
            previous = label
        }
        
    }
}

