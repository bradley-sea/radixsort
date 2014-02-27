//
//  LinkedList.h
//  radixsort
//
//  Created by Brad on 2/26/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject
@property (strong,nonatomic) Node *head;
@property (nonatomic) int count;


-(void)addToEndOfList:(Node *)node;


@end
