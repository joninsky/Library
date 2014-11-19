//
//  BookTableViewController.swift
//  CodeFellowsChallenge
//
//  Created by Jon Vogel on 11/13/14.
//  Copyright (c) 2014 Jon Vogel. All rights reserved.
//

import Foundation
import UIKit

class BookTableViewController: UITableViewController {
    
    var theLibrary: Library?
    var selectedShelf: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Books on Shelf \(selectedShelf! + 1)"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var b = theLibrary?.getBooksForShelf(selectedShelf!)
        return b!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var Cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        var b = theLibrary?.getBooksForShelf(selectedShelf!)
        Cell.textLabel?.text = b![indexPath.row].bookTitle
        Cell.detailTextLabel?.text = b![indexPath.row].bookAuthor
        return Cell
    }
}