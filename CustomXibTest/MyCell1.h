//
// Created by kaiba on 13/08/03.
//


#import <Foundation/Foundation.h>

@class LabelAndImageView;


@interface MyCell1 : UITableViewCell
@property(nonatomic, strong) IBOutlet LabelAndImageView *labelAndImageView;
@property(nonatomic, strong) IBOutlet UILabel *label;
@end