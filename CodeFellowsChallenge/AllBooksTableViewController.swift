//
//  AllBooksTableViewController.swift
//  CodeFellowsChallenge
//
//  Created by Jon Vogel on 11/15/14.
//  Copyright (c) 2014 Jon Vogel. All rights reserved.
//

import Foundation
import UIKit

class AllBooksTableViewController: UITableViewController {
    
    var library: Library?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "All Books"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var allBooks: [Book] = library!.getAllBooks()
        return allBooks.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var Cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        var allBooks: [Book] = library!.getAllBooks()
        Cell.textLabel?.text = allBooks[indexPath.row].bookTitle
        Cell.detailTextLabel?.text = allBooks[indexPath.row].bookAuthor
        return Cell
    }
    
    
    
    
}