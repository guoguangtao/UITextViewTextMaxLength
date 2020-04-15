//
//  UITextField+TextMaxCount.h
//  UITextView
//
//  Created by GGT on 2020/4/14.
//  Copyright © 2020 GGT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol UITextFieldTextMaxCountDelegate;

@interface UITextField (TextMaxCount)

#pragma mark - Property

@property (nonatomic, weak) id<UITextFieldTextMaxCountDelegate> yxc_delegate; /**< 代理 */
@property (nonatomic, assign) NSInteger textMaxLength; /**< 文本最大字数限制 */

#pragma mark - Method

@end


#pragma mark - ================ UITextFieldTextMaxCountDelegate ================

@protocol UITextFieldTextMaxCountDelegate <NSObject>

@optional

/// UITextField 文本发生改变代理方法
/// @param textField UITextField输入框
/// @param text 当前文本字符串
/// @param textLength 当前文本字符串长度
/// @param textMaxLength 当前输入框限制最大字符长度
- (void)textField:(UITextField *)textField
    textDidChange:(NSString *)text
       textLength:(NSInteger)textLength
    textMaxLength:(NSInteger)textMaxLength;

@end


NS_ASSUME_NONNULL_END
