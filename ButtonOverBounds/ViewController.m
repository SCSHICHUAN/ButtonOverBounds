//
//  ViewController.m
//  ButtonOverBounds
//
//  Created by Stan on 2021/5/4.
//

#import "ViewController.h"
#import "ConterntView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConterntView *conterntView = [[ConterntView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    conterntView.backgroundColor = UIColor.orangeColor;
    conterntView.clipsToBounds = NO;
    
    
    
    
    UIButton *buton = [UIButton buttonWithType:UIButtonTypeCustom];
    buton.frame = CGRectMake(100, 150, 200, 200);
    buton.backgroundColor = UIColor.redColor;
    [conterntView addSubview:buton];
    [buton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    conterntView.btn = buton;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc ] initWithTarget:self action:@selector(tap)];
    [conterntView addGestureRecognizer:tap];
    
    
    
    [self.view addSubview:conterntView];
    [conterntView addSubview:buton];
    
    
}
-(void)btnClick
{
    NSLog(@"%s",__func__);
}
-(void)tap
{
    NSLog(@"%s",__func__);
}

@end
