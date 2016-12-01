//
//  ViewController.m
//  CoreAnimationStudy
//
//  Created by lh on 16/11/29.
//  Copyright © 2016年 lh. All rights reserved.
//

#import "ViewController.h"
#define duration 0.3
@interface ViewController ()
@property (nonatomic,strong) UIView *viewAnimation;
@property (nonatomic,assign) NSInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.index = 0;
    /**
     *执行动画按钮
     */
    [self btnForAnimation];
    /**
     *animation
    */
    [self firstAnimation];
    
}
#pragma mark -uibutton
-(void)btnForAnimation{
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-150, [UIScreen mainScreen].bounds.size.width, 44);
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(useFristAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

#pragma mark -tousse
-(void)useFristAnimation{
    self.index += 1;
    /*
    [UIView animateWithDuration:duration animations:^{
        self.viewAnimation.frame = CGRectMake(50*(self.index), 100, 50, 30);
    }];
    */
    /*
    [UIView animateWithDuration:duration animations:^{
        self.viewAnimation.frame = CGRectMake(50*(self.index), 100, 50, 30);
    } completion:^(BOOL finished) {
        self.viewAnimation.frame = CGRectMake(80*(self.index), 100, 50, 30);
    }];
    */
    
    [UIView animateWithDuration:duration delay:duration options:UIViewAnimationOptionRepeat animations:^{
      self.viewAnimation.frame = CGRectMake(50*(self.index), 150, 50, 30);
    } completion:^(BOOL finished) {
        self.viewAnimation.frame = CGRectMake(50*(self.index), 100, 50, 30);
    }];
    
}

#pragma mark -animation
-(void)firstAnimation{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 100, 50, 30)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    self.viewAnimation = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
