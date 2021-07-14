//
//  ManagerBeingCheery.m
//  Lab10
//
//  Created by Dylan Park on 2021-07-14.
//

#import "ManagerBeingCheery.h"

@implementation ManagerBeingCheery

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Hey, it looks yummy! I got hungry, let's take a break!");
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
