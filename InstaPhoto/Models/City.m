//
//  City.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "City.h"

@implementation City

-(id)init{
    self = [super init];
    if (self){
//        self.name = @"test name";
//        self.state = @"state ss";
//        self.population = @22;
//        self.notes = @"this is notes";
    }
    
    return self;
}

-(id)initWithJSON: (NSDictionary *) dict{
    self = [super init];
    if (self){
        self.name = dict[@"name"];
        self.state = dict[@"state"];
        self.population = dict[@"population"];
        self.notes = dict[@"notes"];
    }
    
    return  self;
}

-(City *)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if(self){
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.state = [aDecoder decodeObjectForKey:@"state"];
        self.population = [aDecoder decodeObjectForKey:@"population"];
        self.notes = [aDecoder decodeObjectForKey:@"notes"];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.state forKey:@"state"];
    [aCoder encodeObject:self.population forKey:@"population"];
    [aCoder encodeObject:self.notes forKey:@"notes"];
}


+(NSString *)getPathToArchive{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *docsDir = [paths objectAtIndex:0];
    
    return [docsDir stringByAppendingPathComponent:@"city.model"];
}

+(void)saveCity:(City *)aCity{
    [NSKeyedArchiver archiveRootObject:aCity toFile:[City getPathToArchive]];
}

+(City *) getCity {
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[City getPathToArchive]];
}

@end
