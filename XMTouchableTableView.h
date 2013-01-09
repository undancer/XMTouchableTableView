//
//  XMTouchableTableView.h
//  XMTouchableTableViewController
//
//  Created by khan.lau. on 13-1-8.
//
//

#import <UIKit/UIKit.h>
#import "XMTouchableTableViewDelegate.h"

@interface XMTouchableTableView : UITableView{
    @private
    id _touchableDelegate;
}

@property (nonatomic) id<XMTouchableTableViewDelegate> touchableDelegate;

@end
