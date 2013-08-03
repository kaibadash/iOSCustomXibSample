//
// Created by kaiba on 13/08/03.
//


#import "LabelAndImageView.h"


@implementation LabelAndImageView {

}

- (void)awakeFromNib {
    [[NSBundle mainBundle] loadNibNamed:@"LabelAndImageView" owner:self options:nil];
    [self addSubview:self.contentView];
}

@end