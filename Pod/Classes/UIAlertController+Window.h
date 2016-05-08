//
//  UIAlertController+Window.h
//  FFM
//
//  Created by Eric Larson on 6/17/15.
//  Copyright (c) 2015 ForeFlight, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIAlertController (Window)
+ (instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle tintColor:(nullable UIColor *)tintColor;
- (void)show;
- (void)show:(BOOL)animated;

@end
NS_ASSUME_NONNULL_END
