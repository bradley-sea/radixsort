//
//  LinkedList.m
//  radixsort
//
//  Created by Brad on 2/26/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(void)addToEndOfList:(Node *)node
{
    if (!self.head)
    {
        self.head = node;
        return;
    }
    else
    {
        Node *whileNode = self.head;
        while (whileNode)
        {
            if (whileNode.next)
            {
                whileNode = whileNode.next;
            }
            else
            {
                whileNode.next = node;
                break;
            }
            
        
        }
    }
}


@end
