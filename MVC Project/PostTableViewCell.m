//
//  PostTableViewCell.m
//  MVC Project
//
//  Created by Josh Winskill on 5/15/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import "PostTableViewCell.h"
#import "Post.h"

@implementation PostTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setPost: (Post *) post
{
    _post = post;
    
    self.contentLabel.text = post.blogName;
    
}



@end
