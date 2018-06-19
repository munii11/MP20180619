//
//  FriendDiaryViewController.swift
//  CultureDiary
//
//  Created by SWUCOMPUTER on 2018. 6. 19..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FriendDiaryViewController: UIViewController {
    
    @IBOutlet var friendTitle: UILabel!
    @IBOutlet var friendDate: UILabel!
    @IBOutlet var friendGenre: UILabel!
    @IBOutlet var friendReview: UILabel!
    @IBOutlet var labelLike: UILabel!
    @IBOutlet var labelComment: UILabel!
    @IBOutlet var friendRate: CosmosView!
    
    var friendDiary: NewsfeedData?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = friendDiary?.id
        
        guard let rate = friendDiary?.rate else { return }
        let am = Double(rate)
        
        friendTitle.text = friendDiary?.title
        friendDate.text = friendDiary?.date
        friendGenre.text = friendDiary?.genre
        friendReview.text = friendDiary?.review
        friendRate.rating = Double(am!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonLike(_ sender: UIButton) {
    }
    
    @IBAction func buttonComment(_ sender: UIButton) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
