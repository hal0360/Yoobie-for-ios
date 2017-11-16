

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    WaveViewTypeDefault = 0,
    WaveViewTypeBottom,
    WaveViewTypeLeft,
    WaveViewTypeRight
} WaveViewType;

@interface WaveView : UIView


@property (nonatomic, assign) WaveViewType waveViewType;

@property (nonatomic, strong) UIColor *firsetWaveColor;

@property (nonatomic, strong) UIColor *secondWaveColor;

@property (nonatomic, assign) BOOL isDouble;

@property (nonatomic, assign) CGFloat waveSpeed;

@property (nonatomic, assign) CGFloat waveAmplitude;

@property (nonatomic, assign) BOOL isMutable;

@property (nonatomic, assign) CGFloat waveCycle;


- (void)startWave;

- (void)stopWave;

@end
