//
//  Programming_DemoViewController.h
//  Table View
//
//  Created by Sam on 06/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Programming_DemoViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(copy,nonatomic) NSArray *greekLetters;

@end
