//
//  ReadFromDatabase.m
//  FMDBLearning
//
//  Created by Sayantan Chakraborty on 06/03/16.
//  Copyright © 2016 Sayantan Chakraborty. All rights reserved.
//

#import "ReadFromDatabase.h"
#import "Student.h"

@implementation ReadFromDatabase
-(NSMutableArray *) getStudents
{
    NSMutableArray *students = [[NSMutableArray alloc]init];
    NSString *databasePath = [(AppDelegate *) [[UIApplication sharedApplication] delegate] databasePath];
    
    FMDatabase *db = [FMDatabase databaseWithPath:databasePath];
    [db open];
    
    FMResultSet *resultSet = [db executeQuery:@"select * from Student"];
    while ([resultSet next]) {
        Student *stud = [[Student alloc]init];
        stud.studentName = [resultSet stringForColumn:@"STUDENT_NAME"];
        stud.studentId = [resultSet stringForColumn:@"STUDENT_ID"];
        stud.studentJoinDate = [resultSet stringForColumn:@"STUDENT_JOIN_DATE"];
        [students addObject:stud];
        NSLog(@"result:%@",[resultSet resultDictionary].description);
    }
    [db close];
    return students;
}
@end
