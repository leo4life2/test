//
//  ViewController.swift
//  test
//
//  Created by Leo Li on 11/07/2017.
//  Copyright © 2017 leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let titleView = UIView()
        titleView.frame.size.height = 37
        
        let posterProfileImageView = UIImageView()
        posterProfileImageView.backgroundColor = UIColor.black
        posterProfileImageView.frame.size.height = 36
        posterProfileImageView.frame.size.width = 36
        posterProfileImageView.layer.masksToBounds = true
        posterProfileImageView.layer.cornerRadius = posterProfileImageView.frame.size.width/2
        posterProfileImageView.contentMode = .scaleAspectFill
        titleView.addSubview(posterProfileImageView)
        
        let posterProfImageTopConstraint = NSLayoutConstraint(item: posterProfileImageView, attribute: .top, relatedBy: .equal, toItem: titleView, attribute: .top, multiplier: 1, constant: 0)
        titleView.addConstraint(posterProfImageTopConstraint)
        
        let posterProfImageLeadingConstraint = NSLayoutConstraint(item: posterProfileImageView, attribute: .leading, relatedBy: .equal, toItem: titleView, attribute: .leading, multiplier: 1, constant: 0)
        titleView.addConstraint(posterProfImageLeadingConstraint)
        
        let posterProfImageBottomConstraint = NSLayoutConstraint(item: posterProfileImageView, attribute: .bottom, relatedBy: .equal, toItem: titleView, attribute: .bottom, multiplier: 1, constant: 0)
        titleView.addConstraint(posterProfImageBottomConstraint)
        
        let postDateLabel = UILabel()
        postDateLabel.translatesAutoresizingMaskIntoConstraints = false
        titleView.addSubview(postDateLabel)
        let postDateLabelAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor(red: 151/255, green: 147/255, blue: 147/255, alpha: 1),
            NSAttributedStringKey.font : UIFont(name: "Avenir-Roman", size: 12)! // Note the !
        ]
        postDateLabel.attributedText = NSAttributedString(string: "someDate", attributes: postDateLabelAttributes)
        postDateLabel.sizeToFit()
        
        let postDateLabelLeadingConstraint = NSLayoutConstraint(item: postDateLabel, attribute: .leading, relatedBy: .equal, toItem: posterProfileImageView, attribute: .trailing, multiplier: 1, constant: 9)
        titleView.addConstraint(postDateLabelLeadingConstraint)
        
        let postDateLabelBottomConstraint = NSLayoutConstraint(item: postDateLabel, attribute: .bottom, relatedBy: .equal, toItem: titleView, attribute: .bottom, multiplier: 1, constant: 0)
        titleView.addConstraint(postDateLabelBottomConstraint)
        
        let posterNameLabel = UILabel()
        posterNameLabel.translatesAutoresizingMaskIntoConstraints = false
        titleView.addSubview(posterNameLabel)
        let attributes = [
            NSAttributedStringKey.foregroundColor: UIColor(red: 80/255, green: 79/255, blue: 79/255, alpha: 1),
            NSAttributedStringKey.font : UIFont(name: "PingFangSC-Medium", size: 14)! // Note the !
        ]
        posterNameLabel.attributedText = NSAttributedString(string: "someGuy", attributes: attributes)
        posterNameLabel.sizeToFit()
        
        let posterNameBottomConstraint = NSLayoutConstraint(item: postDateLabel, attribute: .top, relatedBy: .equal, toItem: posterNameLabel, attribute: .bottom, multiplier: 1, constant: 1)
        titleView.addConstraint(posterNameBottomConstraint)
        let posterNameLeadingConstraint = NSLayoutConstraint(item: posterNameLabel, attribute: .leading, relatedBy: .equal, toItem: posterProfileImageView, attribute: .trailing, multiplier: 1, constant: 9)
        
        titleView.addConstraint(posterNameLeadingConstraint)
        
        if postDateLabel.frame.width>=posterNameLabel.frame.width{
            titleView.frame.size.width = posterProfileImageView.frame.width+9+postDateLabel.frame.width
        }else{
            titleView.frame.size.width = posterProfileImageView.frame.width+9+posterNameLabel.frame.width
        }
        
        self.navigationItem.titleView = titleView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

