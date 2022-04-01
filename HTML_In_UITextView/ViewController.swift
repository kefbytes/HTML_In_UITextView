//
//  ViewController.swift
//  HTML_In_UITextView
//
//  Created by Kent Franks on 11/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var htmlTextView: UITextView?
    let htmlString = "<p>Vanguard LifeStrategy<sup>&#174;</sup> Conservative Growth Fund seeks to provide current income and low to moderate capital appreciation.<a href='https://www.google.com'>My Link</a></p>"

    override func viewDidLoad() {
        super.viewDidLoad()
        let htmlData = NSString(string: htmlString).data(using: String.Encoding.utf8.rawValue)
        let options = [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html]
        let attributedString = try! NSAttributedString(data: htmlData!,
                                                       options: options,
                                                       documentAttributes: nil)
        
        htmlTextView?.attributedText = attributedString
    }
}
