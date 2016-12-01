//
//  main.m
//  Plist
//
//  Created by Jack Aaron on 16/11/29.
//  Copyright © 2016年 Wang Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //        NSArray *n1 = @[
        //                        @{@"name":@"会员升级", @"icon":@"upMembership"},
        //                        @{@"name":@"充值筷币", @"icon":@"topUp"},
        //                        @{@"name":@"提现管理", @"icon":@"withdraw"}
        //                        ];
        //        NSArray *n2 = @[
        //                        @{@"name":@"账户明细", @"icon":@"accountDetails"},
        //                        @{@"name":@"排行榜", @"icon":@"rankingList"},
        //                        @{@"name":@"赚钱攻略", @"icon":@"makeMoney"}
        //                        ];
        //        NSArray *n3 = @[
        //                        @{@"name":@"关于筷分享", @"icon":@"aboutShare"}
        //                        ];
        //        NSArray *dataArr = @[n1, n2, n3];
        NSArray *dataArr = @[
                             @{@"icon": @"支付宝A",@"title":@"支付宝提现",@"detail":@"无手续费，审核安全",@"controllerTitle":@"KFXAlipayViewController"},
                             @{@"icon": @"微信(5)",@"title":@"微信提现",@"detail":@"简单方便，快捷安全",@"controllerTitle":@"KFXWeichatWithdrawViewController"}
                             ];
        BOOL flag = [dataArr writeToFile:@"/Users/wang/Desktop/withdrawCenter.plist" atomically:YES];
        if (flag) {
            NSLog(@"写入成功!");
        }
        //        NSArray *persons = [NSArray arrayWithContentsOfFile:@"/Users/xiao/Desktop/persons.plist"];
        //        NSLog(@"%@", persons);
    }
    return 0;
}
