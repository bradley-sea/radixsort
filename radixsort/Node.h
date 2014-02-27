//
//  Node.h
//  radixsort
//
//  Created by Brad on 2/26/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic) NSNumber *value;
@property (strong,nonatomic) Node *next;


@end
