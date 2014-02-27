//
//  CFViewController.m
//  radixsort
//
//  Created by Brad on 2/26/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "CFViewController.h"
#import "LinkedList.h"
#import "Node.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@9,@179,@139,@38,@10,@5,@36,@1009, nil];
    
    [self radixSort:array];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)radixSort:(NSMutableArray *)array
{
    NSMutableArray *sortArray = array;
    int n = 1;
    int m = 10;
    int zeroCount = 0;
    int originalCount = array.count;
    NSMutableArray *radixArray = [NSMutableArray new];
    for (int i =0;i <= 9; i++)
    {
        LinkedList *LL = [LinkedList new];
        [radixArray addObject:LL];
    }
    
    NSLog(@"all done");
    while (zeroCount != originalCount)
    {
    
        for (NSNumber* number in sortArray)
    {
        LinkedList *LL = radixArray[((number.integerValue % m) /n)];
        
        if (LL.head)
        {
            Node *newNode = [Node new];
            newNode.value = number;
            [LL addToEndOfList:newNode];
            LL.count++;
        }
        else
        {
            Node *newNode = [Node new];
            newNode.value = number;
            LL.head = newNode;
            LL.count++;
        }
    }
    LinkedList *ZeroLL = radixArray[0];
    zeroCount = ZeroLL.count;
    
    [sortArray removeAllObjects];
    
    for (LinkedList *LL in radixArray)
    {
        Node *node = LL.head;
        
        while(node)
        {
            [sortArray addObject:node.value];
            LL.head = node.next;
            LL.count--;
            node = LL.head;
        }

    }
    
    m = m*10;
    n = n*10;
    
    }
     NSLog(@"all done part 2 %@", sortArray);
}
@end
