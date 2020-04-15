//
//  YXCController.m
//  UITextView
//
//  Created by GGT on 2020/4/14.
//  Copyright © 2020 GGT. All rights reserved.
//

#import "YXCController.h"
#import "UITextView+TextMaxCount.h"
#import "UITextField+TextMaxCount.h"

@interface YXCController () <UITextViewTextMaxCountDelegate, UITextViewDelegate, UITextFieldDelegate, UITextFieldTextMaxCountDelegate>

@property (nonatomic, strong) UITextView *textView; /**< textView */
@property (nonatomic, strong) UITextField *textField; /**< 输入框 */
@property (nonatomic, strong) UILabel *textViewLabel;
@property (nonatomic, strong) UILabel *textFieldLabel;

@end

@implementation YXCController

#pragma mark - Lifecycle

/// 刷新UI
- (void)injected {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"测试Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUI];
    [self setupConstraints];
}

- (void)dealloc {
    
    NSLog(@"%s", __func__);
}


#pragma mark - Custom Accessors (Setter 与 Getter 方法)


#pragma mark - IBActions


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol

#pragma mark - UITextViewTextMaxCountDelegate

- (void)textView:(UITextView *)textView
   textDidChange:(NSString *)text
      textLength:(NSInteger)textLength
   textMaxLength:(NSInteger)textMaxLength {

    NSLog(@"%s", __func__);
    NSString *string = [NSString stringWithFormat:@"textView : %ld/%ld", textLength, textMaxLength];
    self.textViewLabel.text = string;
}

- (void)textField:(UITextField *)textField textDidChange:(NSString *)text textLength:(NSInteger)textLength textMaxLength:(NSInteger)textMaxLength {
    
    NSLog(@"%s", __func__);
    NSString *string = [NSString stringWithFormat:@"textView : %ld/%ld", textLength, textMaxLength];
    self.textFieldLabel.text = string;
}


#pragma mark - UI

- (void)setupUI {
    
    self.textViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 150, 200, 30)];
    self.textViewLabel.font = [UIFont systemFontOfSize:13.0f];
    [self.view addSubview:self.textViewLabel];
    
    self.textFieldLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 250, 200, 30)];
    self.textFieldLabel.font = [UIFont systemFontOfSize:13.0f];
    [self.view addSubview:self.textFieldLabel];
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    self.textView.layer.borderWidth = 0.5f;
    self.textView.layer.borderColor = [UIColor grayColor].CGColor;
    self.textView.layer.cornerRadius = 4.0f;
    self.textView.textMaxLength = 10;
    self.textView.yxc_delegate = self;
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 200, 280, 30)];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.textMaxLength = 20;
    self.textField.yxc_delegate = self;
    [self.view addSubview:self.textField];
}


#pragma mark - Constraints

- (void)setupConstraints {
    
    
}


#pragma mark - 懒加载

@end
