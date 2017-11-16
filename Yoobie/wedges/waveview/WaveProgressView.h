

#import <UIKit/UIKit.h>

@interface WaveProgressView : UIView


@property (nonatomic, strong) UIColor *firstWaveColor;

@property (nonatomic, strong) UIColor *secondWaveColor;

@property (nonatomic, assign) CGFloat percent;

@property (nonatomic, assign) BOOL showPercent;

@property (nonatomic, strong) UIColor *percentColor;

@property (nonatomic, assign) BOOL showAnimation;

@property (nonatomic, assign) BOOL isDouble;

@property (nonatomic, assign) BOOL isCircle;

@end
