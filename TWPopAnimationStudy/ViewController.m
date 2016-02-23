//
//  ViewController.m
//  TWPopAnimationStudy
//
//  Created by HaKim on 16/2/23.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "ViewController.h"
#import <pop/POP.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *testView1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self test3];
}

- (void)test1{
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
    anim.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 200, 200)];
    [self.testView1.layer pop_addAnimation:anim forKey:@"size"];
}

- (void)test2{
    POPDecayAnimation *anim = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    anim.velocity = @(300.);
    [self.testView1.layer pop_addAnimation:anim forKey:@"slide"];
}

- (void)test3{
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(0.0);
    anim.toValue = @(1.0);
    [self.testView1 pop_addAnimation:anim forKey:@"fade"];
}
@end
