//
//  ViewController.swift
//  LeafHighlighter
//
//  Created by Tommi Kivimäki on 28/11/2018.
//  Copyright © 2018 Tommi Kivimäki. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
  
  @IBOutlet weak var moreButton: NSButton!
  
  @IBAction func openSafari(_ sender: Any) {
    print("Open Safari")
    let url = URL(string: "https://github.com/vapor/leaf")
    guard let leafUrl = url else { return }
    let bundleIdentifier = "com.apple.safari"
    NSWorkspace.shared.open([leafUrl],
                            withAppBundleIdentifier: bundleIdentifier,
                            options: .default,
                            additionalEventParamDescriptor: nil,
                            launchIdentifiers: nil)
  
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}

