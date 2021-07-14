//
//  Pizza.m
//  Lab10
//
//  Created by Dylan Park on 2021-07-14.
//

#import "Pizza.h"

@implementation Pizza

+ (instancetype) pizzaWithSize: (PizzaSize) size toppings: (NSArray *) toppings {
    return [[Pizza alloc] initWithSize:size toppings:toppings];
}

+ (Pizza *) largePepperoni {
    return [Pizza pizzaWithSize:large toppings:@[@"tomato", @"sauce", @"mozzeralla", @"cheese", @"pepperonni"]];
}

+ (Pizza *) meatLoversWithSize:(PizzaSize)size {
    return [Pizza pizzaWithSize:size toppings:@[@"meat"]];
}

+ (PizzaSize) sizeFromString: (NSString *) strOrig {
    PizzaSize size;
    
    NSString *str = strOrig.lowercaseString;
    if ([str isEqualToString:@"small"]) {
        size = small;
    }
    else if ([str isEqualToString:@"medium"]) {
        size = medium;
    }
    else if ([str isEqualToString:@"large"]) {
        size = large;
    }
    else {
        size = NO;
    }
    return size;
}

+ (NSString *) stringFromSize: (PizzaSize) size {
    NSString *str;
    if (size == small) {
        str = @"small";
    }
    else if (size == medium) {
        str = @"medium";
    }
    else if (size == large) {
        str = @"large";
    }
    else {
        str = NULL;
    }
    return str;
}

- (NSString *) description {
    NSString *size = [Pizza stringFromSize:self.size];
    NSString *toppings;
    if (self.toppings.count > 0) {
        toppings = [self.toppings componentsJoinedByString:@", "];
    }
    else {
        toppings = @"no toppings";
    }
    return [NSString stringWithFormat:@"%@ pizza with %@", size, toppings];
}

- (instancetype) initWithSize: (PizzaSize) size toppings: (NSArray *) toppings {
    self = [self init];
    self.size = size;
    self.toppings = toppings;
    return self;
}

@end
