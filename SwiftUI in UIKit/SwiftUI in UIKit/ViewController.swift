//
//  ViewController.swift
//  SwiftUI in UIKit
//
//  Created by Barbara Beatrice on 25/03/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //    Add segue action for the UIHostingController and set your SwiftUIView as root view
    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: LoadingAnimationView())
    }
    
}
