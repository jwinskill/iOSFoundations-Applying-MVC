//
//  ViewController.m
//  MVC Project
//
//  Created by Josh Winskill on 5/15/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import "ViewController.h"
#import "Post.h"
#import "PostTableViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *posts;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Post *post1 = [[Post alloc] init];
    post1.userName = @"Josh";
    post1.title = @"First Post";
    post1.blogName = @"The Great Blog";
    post1.timeStamp = [NSDate date];
    
    Post *post2 = [[Post alloc] init];
    post2.userName = @"Tommy";
    post2.title = @"Oh hai, Mark";
    post2.blogName = @"You're tearing me apart, Lisa!!";
    post2.timeStamp = [NSDate date];
    
    Post *post3 = [[Post alloc] init];
    post3.userName = @"Mark";
    post3.title = @"Sestosterone";
    post3.blogName = @"The Disaster Artist";
    post3.timeStamp = [NSDate date];
    
    Post *post4 = [[Post alloc] init];
    post4.userName = @"King Joffrey";
    post4.title = @"Debt Collectors";
    post4.blogName = @"King Joffrey is the BEST";
    post4.timeStamp = [NSDate date];
    
    Post *post5 = [[Post alloc] init];
    post5.userName = @"Garfield";
    post5.title = @"Lasagna Frontier";
    post5.blogName = @"Free Orange Cat";
    post5.timeStamp = [NSDate date];
    
    
    
    NSMutableArray *posts = [[NSMutableArray alloc] initWithObjects: post1, post2, post3, post4, post5, nil];
    
    self.posts = posts;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITableViewDataSource Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.posts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *postTableIdentifier = @"PostCell";
    
    PostTableViewCell *postCell = [tableView dequeueReusableCellWithIdentifier: postTableIdentifier forIndexPath:indexPath];
    
    Post *post = [self.posts objectAtIndex:indexPath.row];
    
    [postCell setPost: post];
    
    return postCell;
}



@end
