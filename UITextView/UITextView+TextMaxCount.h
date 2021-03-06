//
//  UITextView+TextMaxCount.h
//  UITextView
//
//  Created by GGT on 2020/4/14.
//  Copyright © 2020 GGT. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol UITextViewTextMaxCountDelegate;

@interface UITextView (TextMaxCount)

#pragma mark - Property

@property (nonatomic, weak) id<UITextViewTextMaxCountDelegate> yxc_delegate; /**< 代理 */
@property (nonatomic, assign) NSInteger textMaxLength; /**< 文本最大字数限制 默认为0，代表无限制输入*/

#pragma mark - Method

@end


#pragma mark - ================ UITextViewTextMaxCountDelegate ================

@protocol UITextViewTextMaxCountDelegate <NSObject>

@optional

/// TextView 文本发生改变代理方法
/// @param textView TextView输入框
/// @param text 当前文本字符串
/// @param textLength 当前文本字符串长度
/// @param textMaxLength 当前输入框限制最大字符长度
- (void)textView:(UITextView *)textView
   textDidChange:(NSString *)text
      textLength:(NSInteger)textLength
   textMaxLength:(NSInteger)textMaxLength;

@end


NS_ASSUME_NONNULL_END



