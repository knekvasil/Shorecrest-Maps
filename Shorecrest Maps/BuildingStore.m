//
//  BuildingStore.m
//  Shorecrest Maps
//
//  Created by admin on 4/28/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "BuildingStore.h"
#import "Building.h"
#import "Annotation.h"
#import "ImageStore.h"
#import "EmployeeStore.h"
@implementation BuildingStore

@synthesize allBuildings;

+(BuildingStore *)sharedStore;
{
    static BuildingStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}

-(id)init
{
    self = [super init];
    if (self) {
        allBuildings = [[NSMutableArray alloc]init];
        
        ImageStore *imageStore = [ImageStore sharedStore];
        
        
        Building *newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Landy Hall"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Landy Hall houses the Upper School administrative offices, the College Counseling office as well as 19 classrooms for students in grades 9-12. It was completed in May of 2008 with 27,881 square feet."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", @"Social Studies", @"Mathematics", @"English", @"Computer Science", @"College Counciling", @"Arts & Humanities", @"Administration", nil]];          //-------------------------
        
        NSMutableArray *temporaryArray = [[NSMutableArray alloc]init]; //switch temp array withEmployeesinBuilding
        
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        
        NSSortDescriptor *descriptor = [[NSSortDescriptor alloc]initWithKey:@"department" ascending:NO];
        
        NSMutableArray *departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        
        [newBuilding setEmployeesInBuilding:departmentArray];
        
        UIImage *image = [UIImage imageNamed:@"Landy.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Landy.PNG"]];____________________________________________________
//        [newBuilding setLocation:34];

        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Janet Root Theatre"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Janet Root Theatre, or JRT to campus regulars, is a meeting place for student assemblies, parent meetings, grade-level performances and all major school productions. It includes the theatre box office and an art gallery and seats more than 600 people. Part of the Raymund Arts & Media Center’s 31,482 square feet, the JRT was completed in 2003."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Arts & Humanities", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees] )
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
       departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        
        [newBuilding setEmployeesInBuilding:departmentArray];
        
        image = [UIImage imageNamed:@"JanetRootTheatre.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"JanetRootTheatre.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Student Activity Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"At the SAC (Student Activity Center) you’ll find parent meetings, student gatherings, campus events like the used uniform sale and Book Fair. Displayed in the lobby of the SAC are archival photos of noted alumni and proud moments in Shorecrest history. Part of the Raymund Arts & Media Center’s 31,482 square feet, the SAC was completed in 2003."];
        
        [temporaryArray removeAllObjects];
        
        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"SAC.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"SAC.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
    
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Carleen Vinall Haskell Library"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"With more than 37,000 books, 50 instructional DVDs, 30 computers and a dedicated Makerspace, the Haskell Library is a valuable asset to students, teachers and parents of all grade levels. It also houses a private conference room and administrative offices. Part of the Raymund Arts & Media Center’s 31,482 square feet, the Haskell Library was completed in 2003."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"The Learning Center", @"Technology", @"Media Center", nil]];
        
        [temporaryArray removeAllObjects];
        
        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]])
            {
                [temporaryArray addObject:e];
            }
        }
        
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LIBRARY.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LIBRARY.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"MS Sher Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Sher Center is the home of the fifth and sixth grade classes at Shorecrest as well as the Middle School administrative offices and the faculty lounge. Completed in May 2000, the Sher Center is 20,570 square feet and contains 11 classrooms."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", @"Social Studies", @"Mathematics", @"English", @"Computer Science",@"Administration",nil]];
        
//        [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", @"Social Studies" @"Service Learning", @"Mathematics", @"English", @"Computer Science", @"Administration", @"Science", nil]];

        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"SherCenter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"SherCenter.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"MS Arts & Science Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Arts & Sciences Center houses the seventh and eighth grade classes. It also includes dedicated space for teacher offices, a private conference room, space for tutors of The Learning Center at Shorecrest, and the Middle School art studio. Completed in May 2000, the Sher Center is 20,570 square feet and contains 11 classrooms. "];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", @"Social Studies", @"Science", @"Mathematics", @"English", @"Arts & Humanities", nil]];          //----------------
//        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Mathematics", @"World Languages", @"Social Studies", @"Science", @"Arts & Humanities", @"English", nil]];          //----------------
        
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"MiddleSchoolASC.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"MiddleSchoolASC.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Athletic Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Athletic Center at Shorecrest was completed in October 2011. Its 34,000 square feet hold a formal gymnasium, the Crisp Gym, and a recreational gymnasium, as well as a weight and fitness room, a training room, the Athletic Director’s suite, locker rooms for Middle and Upper School, PE offices, and food server. The building was funded through a capital campaign in 2010-2011 that raised $5.2 million to construct the building which was designed by local architectural firm, Wannemacher Jensen and constructed by XX"];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Physical Education", @"Athletics", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"AthleticCenter.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"AthleticCenter.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"US ST Building"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Known commonly as the ST Building, these 13,984 square feet were renovated in June of 2008 and contain 7 classrooms including Upper School science labs and an art studio with a dark room for photography."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Science", nil]];          //------------------
        [temporaryArray removeAllObjects];
        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        
        [newBuilding setEmployeesInBuilding:departmentArray];
        NSLog(@"%@", [newBuilding departments]);
        NSLog(@"%@", [newBuilding employeesInBuilding]);

        image = [UIImage imageNamed:@"Sci&TechBuilding.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Sci&TechBuilding.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Experiential School"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Experiential School contains is the home of the junior kindergarten (4-year-old) classes and The Experiential School administrative office. Its 3,584 square feet were originally constructed in 1977 but were renovated in 2013 under the design leadership of Prakash Nair.  What were formerly three self-contained classrooms now open into the Exploratorium, or central space in the building. They also open into each other and are separated only by sliding glass doors. This open floor plan makes all of the spaces feel larger and facilitates more interaction among the students and their teachers."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Junior Kindergarten", nil]]; 
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"ExperientialSchool.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"ExperientialSchool.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Mini Gym"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Constructed in 2004, the Mini Gym is 29,700 square feet containing 20 classrooms. Four classes each of kindergarten through fourth grade students call the Mini Gym home."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Physical Education", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"MINIGYM.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"MINIGYM.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS K-4 Classrooms"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Constructed in 1977 with 1,920 square feet, this building includes the music room for the Lower School and a Resource Room for teachers. This room serves as the “Wonder Studio,” a special pre-school program offering, on Mondays, Tuesdays, Wednesdays, and Thursdays."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Third Grade",@"Second Grade", @"Kindergarten",@"Fourth Grade", @"First Grade", @"Computer Science", nil]];
        
        [temporaryArray removeAllObjects];                                                                                                                                                      //K4 Classrooms Dep. Messed up
        //
        //
        //
        //
        //
        //
        //
        //
        //

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]])
            {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];
        
        image = [UIImage imageNamed:@"K4Classrooms.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"K4Classrooms.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Music + Resource Room"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Constructed in 1977 with 1,920 square feet, this building includes the music room for the Lower School and a Resource Room for teachers."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Arts & Humanities", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LDMUSIC.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LDMUSIC.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS Computer Lab"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"The Lower School Computer Lab is housed in a concrete structure built in 1977 that also houses the food service kitchen for the entire school as well as a Lower School faculty lounge. The building is 3,028 square feet."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Technology", nil]];
        
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LDCOMPUTER.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LDCOMPUTER.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS Extended Day"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Lower School Extended Day is housed in two rooms of a building constructed in 1977 that also houses the “Helping Hands” room where parents volunteer to help with projects in support of teachers. It is also adjacent to the school Clinic. The building is 2,776 square feet."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Extended Day", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"AfterCare.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"AfterCare.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Alpha"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"This part of campus is home to Shorecrest’s youngest students, the Alpha classes. The building was built in 1977 and contains three classrooms totaling 2,160 square feet."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Alpha", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Alpha.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Alpha.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS Art"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Constructed in 1977 with 1,500 square feet, this classroom serves as the center for art classes for Kindergarten through fourth grade students. Re-imagined in 2014, the LS Art Studio has a choice-based layout through which students self-direct their art time choosing pottery, crafts, painting, or drawing in dedicated sections of the room. "];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Arts & Humanities", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LDART.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LDART.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Haskell Field"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"This complex serves as the football and soccer field, and houses an eight-lane rubberized track as well as a concession stand. The field was constructed in 2000 as part of the Shorecrest Builds capital campaign and named in honor of the Haskell Family, Emma Vinall, Carleen, and Bruce whose combined leadership of the institution represents over 60 years of the school’s history"];
        [newBuilding setDepartments:[NSArray arrayWithObjects:nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Haskell.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Haskell.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Hernandez Family Field"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Hernandez Field is the home to Shorecrest baseball. This field was constructed as part of the Shorecrest Builds capital campaign, and funded by professional baseball player and former Shorecrest parent, Roberto Hernandez, who was playing for the New York Mets at the time."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Hernandez.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Hernandez.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Reilly Field"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Reilly Field is the home to Shorecrest softball. Mary Anne Reilly, former chair of the Shorecrest Board of Trustees, made a donation to the school and named the softball field in honor of Shorecrest’s female athletes."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Reilly.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Reilly.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS Spanish"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Constructed in 1977, this classroom building is 1,680 square feet. In addition to the Spanish classroom, the adjacent classroom is the “Children’s Studio” where “Mommy and Me” music and movement classes are held for nursery aged children that are too young for Shorecrest’s Alpha class. The building was renovated in 2014 to serve as a second language classroom."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"World Languages", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LDSpanish.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LDSpanish.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"LS Learning Center"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"This portable building houses the staff who support the Learning Center for Lower School children. Staff include on-sight certified speech/ language pathologists and occupational therapists. There are aslo certified teachers and specialists with expertise in alternative methodology for reading and tutoring in all subject areas."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Guidance", @"Advancement", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"LEARNINGCENTER.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"LEARNINGCENTER.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        
        newBuilding = [[Building alloc]init];
        [newBuilding setName:@"Administration Building"];
        [newBuilding setImageKey:[newBuilding name]];
        [newBuilding setDescription:@"Built in 1987, the Administration building is 3,330 square feet. Interestingly the building was originally the real estate office at Pasadena Country Club and was gifted to Shorecrest, who desperately needed more building space. The building was moved over two nights on a large flatbed truck to Shorecrest campus in the early 1990s to serve as the Administration/ Admissions office."];
        [newBuilding setDepartments:[NSArray arrayWithObjects:@"Admissions", @"Administration", @"Registrar", @"Buisiness Office", @"Marketing and Communications", @"Summer and Afterschool Programs", nil]];
        [temporaryArray removeAllObjects];

        for (Employee *e in [[EmployeeStore sharedStore]allEmployees])
        {
            if ([[newBuilding departments] containsObject:[e department]] && [[newBuilding name] isEqualToString:[e buildingName]]) {
                [temporaryArray addObject:e];
            }
        }
        departmentArray = (NSMutableArray *)[temporaryArray sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descriptor, nil]];
        [newBuilding setEmployeesInBuilding:departmentArray];

        image = [UIImage imageNamed:@"Administration.PNG"];
        [imageStore setImage:image forKey:[newBuilding name]];
        
//        [newBuilding setImage:[UIImage imageNamed:@"Administration.PNG"]];_____________________________________________
//        [newBuilding setLocation:34];
        [allBuildings addObject:newBuilding];
        

    }
    
    
    return self;
}

-(NSArray *)allBuildings;
{
    return allBuildings;
}


@end
