//
//  AppDelegate.swift
//  Gradle OSX
//
//  Created by Pedro Paulo Amorim on 19/12/15.
//  Copyright © 2015 ppamorim. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!
  var viewController : HomeViewController? = nil

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    self.window.backgroundColor = NSColor(rgba: "#02303A")
    self.viewController = HomeViewController()
    self.viewController?.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.window.frame), CGRectGetHeight(self.window.frame))
    self.window.contentView?.addSubview((self.viewController?.view)!)
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }
  
  func windowWillResize(sender: NSWindow, toSize frameSize: NSSize) -> NSSize {
    self.viewController!.view.frame = CGRectMake(0, 0, frameSize.width, frameSize.height)
    return frameSize
  }

}