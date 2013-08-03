//
// Created by kaiba on 13/08/03.
//


#import <Foundation/Foundation.h>

@class LabelAndImageView;


@interface MyCell2 : UITableViewCell
@property(nonatomic, strong) IBOutlet LabelAndImageView *labelAndImageView;
@property(nonatomic, strong) IBOutlet UIImageView *myImageView;
@end