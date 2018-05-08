//
//  main.m
//  Palindrome
//
//  Created by Reazul Islam on 5/7/18.
//  Copyright © 2018 Reazul Islam. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (int)max:(int)num1;

@end

@implementation SampleClass

/* method returning the max between two numbers */
- (int)max:(int)num1{
    /* local variable declaration */
    int p, q=10, r=num1%10;
    num1 = num1 / 10;
    while (num1 != 0)
    {
        p = num1 % 10;
        r = q * r + p;
        num1=num1 / 10;
    }
        
    return r;
}

@end

int main ()
{
    /* local variable definition */
    int a;
    int ret;
    
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    scanf("%d",&a);
    
    /* calling a method to get max value */
    ret = [sampleClass max:a];
    
    if (ret == a )
    {
        NSLog(@"Palindrome");
    }
    else
        NSLog(@"Not Palindrome\n");
    return 0;
}
