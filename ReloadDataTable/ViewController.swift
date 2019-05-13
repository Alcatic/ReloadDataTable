//
//  ViewController.swift
//  ReloadDataTable
//
//  Created by c85529 on 5/13/19.
//  Copyright © 2019 c85529. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        profileSegments.selectedSegmentIndex = 0
        myTable.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cell")
        myTable.register(UINib(nibName: "ReviewCell", bundle: nil), forCellReuseIdentifier: "reviewCell")
        myTable.register(UINib(nibName: "LikesCell", bundle: nil), forCellReuseIdentifier: "likesCell")
    }
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var profileSegments: UISegmentedControl!
    @IBAction func profileSegmentControl(_ sender: UISegmentedControl) {
        myTable.reloadData()
    }
    
    var theDate = Date()
    var allData = Data.createData()
    var allReviews = Data.createReviewData()
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if profileSegments.selectedSegmentIndex == 0{
            return allData.count
            
        }
        else if profileSegments.selectedSegmentIndex == 1{
            //tableView.reloadData()
            return allReviews.count
        }else{
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if profileSegments.selectedSegmentIndex == 0{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomCell
        cell.productCellImage.image = allData[indexPath.row].productForSaleImage
        cell.productCellName.text! = allData[indexPath.row].productName
        cell.productCellSize.titleLabel?.text = allData[indexPath.row].productSize
        
        return cell
            
        }else if profileSegments.selectedSegmentIndex == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell") as! ReviewCell
            cell.reviewedProduct.image = allData[indexPath.row].productForSaleImage
            cell.dateOfReview.text = theDate.description
            cell.reviewComment.text = allReviews[indexPath.row]
            cell.reviewerImage.image = allData[indexPath.row].productForSaleImage
            
            return cell
        }else{
            
            let cell = UITableViewCell()
            cell.textLabel!.text = "Likes"
            cell.imageView?.image = allData[indexPath.row].productForSaleImage
            
            return cell
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
}

