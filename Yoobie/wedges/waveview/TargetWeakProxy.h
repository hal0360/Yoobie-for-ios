

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TargetWeakProxy : NSProxy

@property (nullable, nonatomic, weak, readonly) id target;

- (instancetype)initWithTarget:(id)target;

+ (instancetype)proxyWithTarget:(id)target;

NS_ASSUME_NONNULL_END

@end
