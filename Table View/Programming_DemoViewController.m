//
//  Programming_DemoViewController.m
//  Table View
//
//  Created by Sam on 06/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "Programming_DemoViewController.h"

@interface Programming_DemoViewController ()

@end

@implementation Programming_DemoViewController
@synthesize greekLetters;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.greekLetters = @[@"Alpha",@"Beta",@"Gamma",@"Delta",@"Epsilon",@"Zeta",@"Eta",@"Theta",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.greekLetters count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell==nil) {
        cell = [ [UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleIdentifier];
    }
    UIImage *image1 = [UIImage imageNamed:@"delhi.jpg"];
    cell.imageView.image = image1;
    cell.textLabel.text = self.greekLetters[indexPath.row];
    return cell;
}

@end
