//
//  ViewController.swift
//  Example
//
//  Created by 陈卓 on 2023/6/21.
//

import UIKit
import cmark_gfm
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(AtomicCounter.current)
        _ = AtomicCounter.next()
    }

}

/// Represents the current state of cmark -> `Markup` conversion.
struct MarkupConverterState {
    /// The original source whose conversion created this state.
    let source: URL?
    
    /// An opaque pointer to a `cmark_iter` used during parsing.
    let iterator: UnsafeMutablePointer<cmark_iter>?
    
    /// The last `cmark_event_type` during parsing.
    let event: cmark_event_type
    
    /// An opaque pointer to the last parsed `cmark_node`.
    let node: UnsafeMutablePointer<cmark_node>?
}

/// A wrapper for a 64-bit unsigned atomic singleton counter.
struct AtomicCounter {
    /// The current counter value.
    static var current: UInt64 {
        return _cmarkup_current_unique_id()
    }

    /// Atomically increment and return the latest counter value.
    static func next() -> UInt64 {
        return _cmarkup_increment_and_get_unique_id()
    }
}

