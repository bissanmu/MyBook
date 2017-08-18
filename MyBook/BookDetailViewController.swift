//
//  BookDetailViewController.swift
//  MyBook
//
//  Created by ktds 29  on 2017. 8. 17..
//  Copyright © 2017년 ktds 29 . All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    var book:Book?
    
    @IBOutlet weak var BookCoverImageView: UIImageView!
    
    @IBOutlet weak var bookWriterLabel: UILabel!
    
    @IBOutlet weak var bookPublisherLabel: UILabel!
    
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookDescriptionView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let newBook = self.book else{
            return
        }
        
        self.BookCoverImageView.image = newBook.coverImage
        self.bookPublisherLabel.text = newBook.publisher
        self.bookWriterLabel.text = newBook.writer
        self.bookPriceLabel.text = String(newBook.price)
        self.bookDescriptionView.text = newBook.description
        
        //Title 표시
        self.navigationItem.title = newBook.title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let webVC = segue.destination as? WebViewController{
            webVC.shopURL = self.book?.url
        }
    }
    

}
