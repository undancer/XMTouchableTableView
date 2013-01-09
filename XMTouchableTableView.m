//
//  XMTouchableTableView.m
//  XMTouchableTableViewController
//
//  Created by khan.lau. on 13-1-8.
//
//

#import "XMTouchableTableView.h"

@implementation XMTouchableTableView

@synthesize touchableDelegate = _touchableDelegate;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    if ([_touchableDelegate conformsToProtocol:@protocol(XMTouchableTableViewDelegate)] &&
        [_touchableDelegate respondsToSelector:@selector(tableView:touchesBegin:withEvent:)])
    {
        [_touchableDelegate tableView:self touchesBegin:touches withEvent:event];
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    
    if ([_touchableDelegate conformsToProtocol:@protocol(XMTouchableTableViewDelegate)] &&
        [_touchableDelegate respondsToSelector:@selector(tableView:touchesCancelled:withEvent:)])
    {
        [_touchableDelegate tableView:self touchesCancelled:touches withEvent:event];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    
    if ([_touchableDelegate conformsToProtocol:@protocol(XMTouchableTableViewDelegate)] &&
        [_touchableDelegate respondsToSelector:@selector(tableView:touchesEnded:withEvent:)])
    {
        [_touchableDelegate tableView:self touchesEnded:touches withEvent:event];
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    
    if ([_touchableDelegate conformsToProtocol:@protocol(XMTouchableTableViewDelegate)] &&
        [_touchableDelegate respondsToSelector:@selector(tableView:touchesMoved:withEvent:)])
    {
        [_touchableDelegate tableView:self touchesMoved:touches withEvent:event];
    }
}


@end
