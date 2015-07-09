//
//  main.m
//  StudentGrade
//
//  Created by NP ECE BME Centre on 6/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UniversityStudent.h"
#import "ArtsStudent.h"
#import "ScienceStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // Create 10 student Objects, assign name and a grade
        // Student 1
        UniversityStudent *alex     = [[UniversityStudent alloc]init];
        alex.firstName              = @"Alex";
        alex.lastName               = @"Ang";
        alex.studentGrade           = 100;
        
        // Student 2
        UniversityStudent *ben      = [[UniversityStudent alloc]init];
        ben.firstName               = @"Ben";
        ben.lastName                = @"Bong";
        ben.studentGrade            = 100;
        
        // Student 3
        UniversityStudent *calvin   = [[UniversityStudent alloc]init];
        calvin.firstName            = @"Calvin";
        calvin.lastName             = @"Chua";
        calvin.studentGrade         = 25;
        
        // Student 4
        UniversityStudent *desmond  = [[UniversityStudent alloc]init];
        desmond.firstName           = @"Desmond";
        desmond.lastName            = @"Ding";
        desmond.studentGrade        = 25;
        
        // Student 5
        UniversityStudent *edmund   = [[UniversityStudent alloc]init];
        edmund.firstName            = @"Edmund";
        edmund.lastName             = @"Ee";
        edmund.studentGrade         = 75;
        
        // Student 6
        UniversityStudent *faye     = [[UniversityStudent alloc]init];
        faye.firstName              = @"Faye";
        faye.lastName               = @"Fong";
        faye.studentGrade           = 75;
        
        // Student 7
        UniversityStudent *george   = [[UniversityStudent alloc]init];
        george.firstName            = @"George";
        george.lastName             = @"Guo";
        george.studentGrade         = 50;
        
        // Student 8
        UniversityStudent *henry    = [[UniversityStudent alloc]init];
        henry.firstName             = @"Henry";
        henry.lastName              = @"Hung";
        henry.studentGrade          = 50;
        
        // Student 9
        UniversityStudent *issac    = [[UniversityStudent alloc]init];
        issac.firstName             = @"Issac";
        issac.lastName              = @"Newton";
        issac.studentGrade          = 100;
        
        // Student 10
        UniversityStudent *jordan   = [[UniversityStudent alloc]init];
        jordan.firstName            = @"Jordan";
        jordan.lastName             = @"Jang";
        jordan.studentGrade         = 100;
        
        // Add the students into the array
        NSArray *students           = @[alex, ben, calvin, desmond, edmund, faye, george, henry, issac, jordan];
        
        float studentGrade[[students count]];
        int index = 0;
        for(UniversityStudent *eachStudent in students){
            studentGrade[index]=eachStudent.studentGrade;
            index++;
        }

        UniversityStudent *class = [[UniversityStudent alloc]init];
        
        // Calculate Average Grade of Class
        float averageGrade = [class calculateClassAverageGradeByStudentGrade:studentGrade andSizeOfClass:(int)[students count]];
        NSLog(@"Class Average Grade is %.1f\n",averageGrade);
        
        // Calculate Average Grade including 5 bonus points for each student of Class
        float averageGradeWithBonus = [class calculateClassAverageGradewithBonusByStudentGrade:studentGrade andSizeOfClass:(int)[students count]];
        NSLog(@"Class Average Grade with Additional Bonus is %.1f\n",averageGradeWithBonus);
        
        // Classify each Class as being "Excellent", "Good" or "Average"
        NSString *classClassification = [class classificationByAverageGrade:averageGradeWithBonus];
        NSLog(@"Class Classification: %@",classClassification);
        
        // Calculate and Report the Standard Deviation for the Class
        float standardDeviationGrade = [class calculateClassStandardDeviationByStudentGrade:studentGrade andAverageGradeWithBonus:averageGradeWithBonus andSizeOfClass:(int)[students count]];
        NSLog(@"Class Standard Deviation is %.1f\n",standardDeviationGrade);
        
        // Create 5 New Art Students
        // Art Student 1
        ArtsStudent *kent               = [[ArtsStudent alloc]init];
        kent.firstName                  = @"Kent";
        kent.lastName                   = @"Kwok";
        kent.numberOfArtArtifacts       = 2;
        
        // Art Student 2
        ArtsStudent *lionel             = [[ArtsStudent alloc]init];
        lionel.firstName                = @"Lionel";
        lionel.lastName                 = @"Lee";
        lionel.numberOfArtArtifacts     = 4;
        
        // Art Student 3
        ArtsStudent *matt               = [[ArtsStudent alloc]init];
        matt.firstName                  = @"Matt";
        matt.lastName                   = @"Ma";
        matt.numberOfArtArtifacts       = 6;
        
        // Art Student 4
        ArtsStudent *neil               = [[ArtsStudent alloc]init];
        neil.firstName                  = @"Neil";
        neil.lastName                   = @"Ning";
        neil.numberOfArtArtifacts       = 8;
        
        // Art Student 5
        ArtsStudent *oliver             = [[ArtsStudent alloc]init];
        oliver.firstName                = @"Oliver";
        oliver.lastName                 = @"Ong";
        oliver.numberOfArtArtifacts     = 10;
        
        NSArray *artsStudents           = @[kent, lionel, matt, neil, oliver];
        for (ArtsStudent *eachStudent in artsStudents){
            // Calling Method on an Object
            NSLog(@"Number of Art Artifacts by %@ is %d\n",eachStudent.firstName, eachStudent.numberOfArtArtifacts);
        }
        
        // Create 5 New Science Students
        // Science Student 1
        ScienceStudent *peter           = [[ScienceStudent alloc]init];
        peter.firstName                 = @"Peter";
        peter.lastName                  = @"Peng";
        peter.numberOfExperimentsDone   = 10;
        
        // Science Student 2
        ScienceStudent *queenie         = [[ScienceStudent alloc]init];
        queenie.firstName               = @"Queenie";
        queenie.lastName                = @"Quek";
        queenie.numberOfExperimentsDone = 8;
        
        // Science Student 3
        ScienceStudent *robert          = [[ScienceStudent alloc]init];
        robert.firstName                = @"Robert";
        robert.lastName                 = @"Rong";
        robert.numberOfExperimentsDone  = 6;
        
        // Science Student 4
        ScienceStudent *sarah           = [[ScienceStudent alloc]init];
        sarah.firstName                 = @"Sarah";
        sarah.lastName                  = @"Song";
        sarah.numberOfExperimentsDone   = 4;
        
        // Science Student 5
        ScienceStudent *tracy           = [[ScienceStudent alloc]init];
        tracy.firstName                 = @"Tracy";
        tracy.lastName                  = @"Tang";
        tracy.numberOfExperimentsDone   = 2;
        
        NSArray *scienceStudents           = @[peter, queenie, robert, sarah, tracy];
        for (ScienceStudent *eachStudent in scienceStudents){
            // Calling Method on an Object
            NSLog(@"Number of Experiments done by %@ is %d\n",eachStudent.firstName, eachStudent.numberOfExperimentsDone);
        }
        
        // Calculate the sum of numbers from 1 to 100
        int sumOfNumbers = 0;
        for (int index = 1; index <=100; index++){
            sumOfNumbers += index;
        }
        // Answer: 5050
        NSLog(@"Sum of numbers from 1 to 100 is %d\n",sumOfNumbers);
    }
    return 0;
}
