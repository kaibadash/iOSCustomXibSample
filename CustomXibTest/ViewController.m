//
//  ViewController.m
//  CustomXibTest
//
//  Created by kaiba on 13/08/03.
//  Copyright (c) 2013 pokosho. All rights reserved.
//

#import "ViewController.h"
#import "MyCell2.h"
#import "MyCell1.h"
#import "LabelAndImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // load xib
    [self.tableView registerNib:[UINib nibWithNibName:@"MyCell1" bundle:nil] forCellReuseIdentifier:@"MyCell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"MyCell2" bundle:nil] forCellReuseIdentifier:@"MyCell2"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 135;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    MyCell1 *myCell1 = nil;
    MyCell2 *myCell2 = nil;
    static NSString *cellIdMyCell1 = @"MyCell1";
    static NSString *cellIdMyCell2 = @"MyCell2";

    switch (indexPath.section) {
        case 0:
            myCell1 = [tableView dequeueReusableCellWithIdentifier:cellIdMyCell1];
            myCell1.labelAndImageView.label.text = [NSString stringWithFormat:@"%d-%d", indexPath.section, indexPath.row];
            myCell1.labelAndImageView.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", indexPath.row + 1]];
            myCell1.label.text = [NSString stringWithFormat:@"MyCell1 %d-%d", indexPath.section, indexPath.row];
            cell = myCell1;
            break;
        case 1:
            myCell2 = [tableView dequeueReusableCellWithIdentifier:cellIdMyCell2];
            myCell2.labelAndImageView.label.text = [NSString stringWithFormat:@"%d-%d", indexPath.section, indexPath.row];
            myCell2.labelAndImageView.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", indexPath.row + 1]];
            myCell2.myImageView.image = [UIImage imageNamed:@"photo.jpg"];
            cell = myCell2;
            break;
        default:
            break;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end