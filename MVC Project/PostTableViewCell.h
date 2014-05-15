//
//  PostTableViewCell.h
//  MVC Project
//
//  Created by Josh Winskill on 5/15/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Post;

@interface PostTableViewCell : UITableViewCell

@property (nonatomic, weak) Post *post;
@property (nonatomic, weak) IBOutlet UILabel *contentLabel;

@end
