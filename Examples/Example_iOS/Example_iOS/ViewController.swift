//
//  ViewController.swift
//  Example_iOS
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

}

fileprivate enum CommonMarkNodeType: String {
    case document
    case blockQuote = "block_quote"
    case list
    case item
    case codeBlock = "code_block"
    case htmlBlock = "html_block"
    case customBlock = "custom_block"
    case paragraph
    case heading
    case thematicBreak = "thematic_break"
    case text
    case softBreak = "softbreak"
    case lineBreak = "linebreak"
    case code
    case html = "html_inline"
    case customInline = "custom_inline"
    case emphasis = "emph"
    case strong
    case link
    case image
    case inlineAttributes = "attribute"
    case none = "NONE"
    case unknown = "<unknown>"

    // Extensions

    case strikethrough

    case table
    case tableHead = "table_header"
    case tableRow = "table_row"
    case tableCell = "table_cell"

    case taskListItem = "tasklist"
}

fileprivate struct MarkupConverterState {

    /// The original source whose conversion created this state.
    let source: URL?

    /// An opaque pointer to a `cmark_iter` used during parsing.
    let iterator: UnsafeMutablePointer<cmark_iter>?

    /// The last `cmark_event_type` during parsing.
    let event: cmark_event_type

    /// An opaque pointer to the last parsed `cmark_node`.
    let node: UnsafeMutablePointer<cmark_node>?

    private(set) var headerSeen: Bool

    init(source: URL?, iterator: UnsafeMutablePointer<cmark_iter>?, event: cmark_event_type, node: UnsafeMutablePointer<cmark_node>?, headerSeen: Bool) {
        self.source = source
        self.iterator = iterator
        self.event = event
        self.node = node
        self.headerSeen = headerSeen
    }

    /// The type of the last parsed cmark node.
    var nodeType: CommonMarkNodeType {
        let typeString = String(cString: cmark_node_get_type_string(node))
        guard let type = CommonMarkNodeType(rawValue: typeString) else {
            fatalError("Unknown cmark node type '\(typeString)' encountered during conversion")
        }
        return type
    }

}
