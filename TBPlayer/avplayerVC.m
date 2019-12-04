//
//  avplayerVC.m
//  TBPlayer
//
//  Created by qianjianeng on 16/2/27.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "avplayerVC.h"
#import "TBPlayer.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface avplayerVC ()

@property (nonatomic, strong) TBPlayer *player;
@property (nonatomic, strong) UIView *showView;
@end

@implementation avplayerVC

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.showView = [[UIView alloc] init];
    self.showView.backgroundColor = [UIColor redColor];
    self.showView.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight);
    [self.view addSubview:self.showView];

    NSURL *url2 = [NSURL URLWithString:@"https://funpayfile.oss-cn-beijing.aliyuncs.com/%E4%B9%90%E5%AD%A6%E9%99%A2%E7%AC%AC%E5%85%AB%E6%9C%9F-%E7%9B%B4%E8%BF%9E%E6%94%BF%E7%AD%96%E5%8F%8A%E6%99%BA%E6%85%A7%E7%BB%8F%E8%90%A5%E8%A7%A3%E8%AF%BB.mp4"];
    
    [[TBPlayer sharedInstance] playWithUrl:url2 showView:self.showView];

}




@end
