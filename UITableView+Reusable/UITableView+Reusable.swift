//
//  UITableView+Reusable.swift
//  UITableView+Reusable
//
//  Created by Menno Wildeboer on 24/02/16.
//  Copyright © 2016 Menno Wideboer. All rights reserved.
//

import UIKit

// Shared protocol to represent reusable items, e.g. table or collection view cells
protocol Reusable: class {
  static var reuseIdentifier: String { get }
}

extension UITableView
{
  func registerReusable<T: Reusable>(cell cellClass: T.Type) {
    registerClass(cellClass, forCellReuseIdentifier: cellClass.reuseIdentifier)
  }
  
  func registerReusable<T: Reusable>(header headerClass: T.Type) {
    registerClass(headerClass, forHeaderFooterViewReuseIdentifier: headerClass.reuseIdentifier)
  }
  
  func registerReusable<T: Reusable>(footer footerClass: T.Type) {
    registerClass(footerClass, forHeaderFooterViewReuseIdentifier: footerClass.reuseIdentifier)
  }
  
  func dequeueReusable<T: Reusable>(cell cellClass: T.Type) -> T {
    guard let cell = dequeueReusableCellWithIdentifier(cellClass.reuseIdentifier) as? T else {
      fatalError("Misconfigured cell type, \(cellClass)!")
    }
    return cell
  }
  
  func dequeueReusable<T: Reusable>(cell cellClass: T.Type, forIndexPath indexPath: NSIndexPath) -> T {
    guard let cell = dequeueReusableCellWithIdentifier(cellClass.reuseIdentifier, forIndexPath: indexPath) as? T else {
      fatalError("Misconfigured cell type, \(cellClass)!")
    }
    return cell
  }
  
  func dequeueReusable<T: Reusable>(header headerClass: T.Type) -> T {
    guard let header = dequeueReusableHeaderFooterViewWithIdentifier(headerClass.reuseIdentifier) as? T else {
      fatalError("Misconfigured header type, \(headerClass)!")
    }
    return header
  }
  
  func dequeueReusable<T: Reusable>(footer footerClass: T.Type) -> T {
    guard let header = dequeueReusableHeaderFooterViewWithIdentifier(footerClass.reuseIdentifier) as? T else {
      fatalError("Misconfigured footer type, \(footerClass)!")
    }
    return header
  }
}