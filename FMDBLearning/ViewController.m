//
//  ViewController.m
//  FMDBLearning
//
//  Created by Sayantan Chakraborty on 06/03/16.
//  Copyright © 2016 Sayantan Chakraborty. All rights reserved.
//

#import "ViewController.h"
#import "ReadFromDatabase.h"
#import "Student.h"
#import "AddStudent.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *students;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ReadFromDatabase *rFromDb = [[ReadFromDatabase alloc]init];
    self.students = [rFromDb getStudents];
    NSLog(@"Students:%@",self.students);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.students.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Student *stud = [self.students objectAtIndex:indexPath.row];
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"studentCell"];
    cell.textLabel.text = stud.studentName;
    cell.detailTextLabel.text = stud.studentJoinDate;
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[AddStudent class]]){
        AddStudent *addStudenVC = (AddStudent *)segue.destinationViewController;
    }
}

@end
