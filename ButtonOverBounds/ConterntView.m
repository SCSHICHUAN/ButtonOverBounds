//
//  ConterntView.m
//  ButtonOverBounds
//
//  Created by Stan on 2021/5/4.
//

#import "ConterntView.h"

@implementation ConterntView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    //point location int button;
    CGPoint turnPoint_to_btn = [self convertPoint:point toView:self.btn];
    if ([self.btn pointInside:turnPoint_to_btn withEvent:event]) {
        return self.btn;
    }else{
        return [super hitTest:point withEvent:event];//不是super view，父类处理
    }
}

@end
