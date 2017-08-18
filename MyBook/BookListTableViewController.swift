//
//  BookListTableViewController.swift
//  MyBook
//
//  Created by ktds 29  on 2017. 8. 17..
//  Copyright © 2017년 ktds 29 . All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController {

    var books:[Book] = Array()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let book1 = Book(title: "최고의 휴식 왜 아무리 쉬어도 피곤이 풀리지 않는 걸까", writer: "구가야 아키라 저 / 홍성민 역 ", publisher: "알에이치코리아(RHK)", coverImage:UIImage(named:"book1")!, price: 13320, description: "대체 이유가 뭘까? 문제는 육체의 피로가 아니다. 당신이 피곤한 이유는 단순히 몸이 지친 것이 아니기 때문이다. 이 모든 피로감은 당신의 뇌가 지쳤다는 신호이다. 근본적으로 몸의 피로를 푸는 방법과 뇌의 피로를 푸는 방법은 다르기 때문에 우리가 흔히 생각하는 수면 등의 방법만으로는 완전한 휴식을 얻기 어렵다. 그렇다면 어떻게 해야 하는가? 신간 『최고의 휴식』은 바로 그에 대한 해답을 담은 책이다. 이 책에서는 우리가 느끼는 피로의 대부분은 ‘피로감’이라는 뇌 현상이라는 것을 최신 뇌과학 연구 성과를 통해 입증하고, 일상에서의 간단한 습관 교정을 통해 진정한 휴식을 취할 수 있도록 ‘뇌 휴식법’7가지를 간명하게 제시해준다.",
                         url : "http://www.yes24.com/24/goods/43924952?scode=032&OzSrank=1")
        let book2 = Book(title: "아무것도 하지 않을 권리", writer: "정희재", publisher: "갤리온", coverImage:UIImage(named:"book2")!, price: 12600, description: "언제부터 쉰다는 것이 용기를 내야만 할 수 있는 일이 됐을까? 왜 꼭 모든 사람이 ‘더 빨리’, ‘더 열심히’를 외치며 살아야만 할까? 전작 『어쩌면 내가 가장 듣고 싶었던 말』에서 따뜻한 위로의 문장들로 독자들의 공감을 얻었던 정희재 작가가, 이번에는 나를 피곤하게 만드는 세상 속에서 잠시 멈춰 쉬어갈 용기에 대해 말한다. 우리가 무엇이 되어야 하고, 무엇을 해야 한다는 생각조차 내려놓은 순간, 진짜 나답게 살 수 있다고. 정작 우리 삶을 풍요롭게 만드는 순간들은 아무것도 하지 않고 보낸 시간들이며, 그 여유로움과 충만함으로 다음 순간 더 행복하게 살아갈 힘을 얻을 수 있다고 말이다. 지금 당장 이것 아니면 큰일 날 것처럼 스스로를 몰아세우고, 남들과 비교하며 스스로를 불행하게 만들고, 불확실한 미래를 두려워하는 모든 이들에게 바치는 휴식 같은 책이다.", url : "http://www.yes24.com/24/goods/43333409?scode=032&OzSrank=2")
        let book3 = Book(title: "나는 생각이 너무 많아", writer: "크리스텔 프티콜랭 저 / 이세진", publisher: "부키", coverImage: UIImage(named:"book3")!, price: 13320, description: "프랑스의 유명한 심리치료사이자 베스트셀러 『굿바이 심리 조종자』의 저자 크리스텔 프티콜랭에 따르면 이들은 그저 남달리 예민한 지각과 명석한 두뇌를 가지고 있을 뿐이다. 크리스텔 프티콜랭은 20여 년간의 임상 경험을 바탕으로, ‘생각이 많아 고민인 사람들’에게 즐겁고도 명쾌한 해결책을 제시한다. 신경학적이고 객관적인 근거를 기반으로 그들이 ‘왜’ 생각이 많을 수밖에 없는지, 보통 사람들과 ‘무엇이’ 다른지, 그 비상한 머리를 가지고 ‘어떻게’ 잘 살아갈 수 있는지에 대해 말해 준다.", url : "http://www.yes24.com/24/goods/13195838?scode=032&OzSrank=3")
        
        self.books.append(book1)
        self.books.append(book2)
        self.books.append(book3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
//        cell.textLabel?.text = "Hello, World"
//        cell.detailTextLabel?.text = "Hello"
//        cell.imageView?.image = UIImage(named: "DSC_6794")
//        print("Cell Index : \(indexPath.row)")
//        
//        cell.textLabel?.text = books[indexPath.row]
        
        if let bookCell = cell as? BookTableViewCell{
            let book = self.books[indexPath.row]
        
//            let numFormatter: NumberFormatter = NumberFormatter()
//            numFormatter.numberStyle = NumberFormatter.Style.decimal
//            
//            let price = book.price
//            let priceStr = numFormatter.string(from: NSNumber(integerLiteral: price))
            
            
            bookCell.bookTitleLabel.text = book.title
            bookCell.bookWriterLabel.text = book.writer
            //bookCell.bookPriceLabel.text = priceStr
            bookCell.bookPriceLabel.text = String(book.price)
            bookCell.bookImageView.image = book.coverImage
            
            return bookCell
        }
        
        
//        let book = self.books[indexPath.row]
//        cell.textLabel?.text = book.title
//        cell.detailTextLabel?.text = book.writer
//        cell.imageView?.image = book.coverImage
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as? UITableViewCell
        let vc = segue.destination as? BookDetailViewController
        
        guard let selectCell = cell, let detailVC = vc else{
            return
        }
        
        if let idx = self.tableView.indexPath(for: selectCell){
            detailVC.book = self.books[idx.row]
        }
        
//        if let selCell = cell{
//             let cellIdx = self.tableView.indexPath(for: selCell)
//            print(cellIdx?.row)
//        }
//       
    }
  

}

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookPriceLabel: UILabel!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookWriterLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}



