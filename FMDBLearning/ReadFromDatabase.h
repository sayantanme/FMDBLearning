//
//  ReadFromDatabase.h
//  FMDBLearning
//
//  Created by Sayantan Chakraborty on 06/03/16.
//  Copyright © 2016 Sayantan Chakraborty. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "FMDatabase.h"

@interface ReadFromDatabase : NSObject
-(NSMutableArray *) getStudents;
@end
