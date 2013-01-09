//
//  XMTouchableTableViewDelegate.h
//  XMTouchableTableViewController
//
//  Created by khan.lau. on 13-1-8.
//
//

#import <Foundation/Foundation.h>

@protocol XMTouchableTableViewDelegate <NSObject>

- (void)tableView:(UITableView *)tableView touchesBegin:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;

@end
