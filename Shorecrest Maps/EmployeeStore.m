//
//  EmployeeStore.m
//  Shorecrest Maps
//
//  Created by comp_sci on 10/13/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "EmployeeStore.h"
#import "Employee.h"

@implementation EmployeeStore

@synthesize allEmployees;

+(EmployeeStore *)sharedStore
{
    static EmployeeStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}

-(id)init
{
    self = [super init];
    if (self) {
        
        allEmployees = [[NSMutableArray alloc]init];
        
        
        //***************************************************************
        //*                                                             *
        //*                                                             *
        //*             LANDY HALL                                      *
        //*                                                             *
        //***************************************************************
        
        Employee *newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Eric Hunt"];
        [newEmployee setDepartment:@"Computer Science"];
        [newEmployee setEmail:@"ehunt@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Michael Steele"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"msteele@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 618"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kurt Wahlgren"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"kwahlgren@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 624"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"David Hyink"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"dhyink@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 633"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Stephen Collins"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"scollins@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111"];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@"MS"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        
        [newEmployee setName:@"Mal Ellenburg"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"mellenburg@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Sarah Moebius"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"smoebius@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Aaron Sober"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"asober@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Teresa Andres"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"tandres@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathryn Sessions"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"ksessions@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Charla Gaglio"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"cgaglio@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"William Leavengood"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"wleavengood@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lee Ahlin"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"lahlin@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Janet Root Theatre"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Thomas Glaister"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"tglaister@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Janet Root Theatre"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Cheryl Lee"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"clee@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Janet Root Theatre"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Michael McCarthy"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"mmcarthy@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Janet Root Theatre"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Bradley Miller"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"bmiller@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Art"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Ralph Littlefield"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"rlittlefeild@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"James Henderson"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"jhenderson@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christopher Powers"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"cpowers@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Ralph Seymour"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"rseymour@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Beth Bartlett"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"bbartlett@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Traci Burke"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"tburke@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"David Field"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"dfield@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathleen Newton"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"knewton@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Anthony Napodano"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"anapodano@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lisa Peck"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"lpeck@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Erich Schneider"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"eshcneider@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"US ST Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Ronald Heller"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"rheller@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Dominique Craft"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"dcraft@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Richard Beaton"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"rbeaton@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kam O'Horo"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"kohoro@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@""];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jacqueline Carnes"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"jcarnes@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Luzmarina Pallares-Hair"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"lpallares@shroecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Cary Powers"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"cpowers@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Brian Wells"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"bwells@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Karen Bruggeman"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"kbruggeman@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Thomas Dillow"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"tdillow@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jennifer Merrigan"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"jmerrigan@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@""];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Fatima Morlando"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"fmorlando@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Michael Murphy"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"mmurphy@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathryn Sessions"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"ksessions@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@"US"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Tripp Welborne"];
        [newEmployee setDepartment:@"Athletics"];
        [newEmployee setEmail:@"twelborne@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Athletic Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jean Spencer-Carnes"];
        [newEmployee setDepartment:@"Admissions"];
        [newEmployee setEmail:@"jcarnes@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christy Welborne"];
        [newEmployee setDepartment:@"Admissions"];
        [newEmployee setEmail:@"cwelborne@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lisa Wikholm"];
        [newEmployee setDepartment:@"Admissions"];
        [newEmployee setEmail:@"lwikholm@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Larissa Daigle"];
        [newEmployee setDepartment:@"Advancement"];
        [newEmployee setEmail:@"ldaigle@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Adrianne Finley-Greenlees"];
        [newEmployee setDepartment:@"Advancement"];
        [newEmployee setEmail:@"afinley-greenlees@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Valerie Rice"];
        [newEmployee setDepartment:@"Advancement"];
        [newEmployee setEmail:@"vrice@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Debbie Shenkman"];
        [newEmployee setDepartment:@"Advancement"];
        [newEmployee setEmail:@"dshenkman@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Debi Bender"];
        [newEmployee setDepartment:@"Buisiness Office"];
        [newEmployee setEmail:@"dbender@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Donna Bessette"];
        [newEmployee setDepartment:@"Business Office"];
        [newEmployee setEmail:@"dbessette@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jodi Maslaney"];
        [newEmployee setDepartment:@"Business Office"];
        [newEmployee setEmail:@"jmaslaney@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Karen Moore"];
        [newEmployee setDepartment:@"Business Office"];
        [newEmployee setEmail:@"kmoore@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Douglas Seely"];
        [newEmployee setDepartment:@"Business Office"];
        [newEmployee setEmail:@"dseely@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Dustin Lynn"];
        [newEmployee setDepartment:@"College Counciling"];
        [newEmployee setEmail:@"dlynn@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Tiffany Meertins"];
        [newEmployee setDepartment:@"College Counciling"];
        [newEmployee setEmail:@"tmeertins@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Meghan Schneider"];
        [newEmployee setDepartment:@"College Counciling"];
        [newEmployee setEmail:@"mschneider@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Landy Hall"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Alessandria Gonzalez"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"agonzalez@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Carol Hirsch"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"chirsch@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Arline Jacquot"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"ajacquot@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Annmarie Johnson"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"N/A"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jill Killgore"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"jkillgore@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Theresa Lotito"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"tlotito@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Heather Morgan"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"hmorgan@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Carola Raab"];
        [newEmployee setDepartment:@"Extended Day"];
        [newEmployee setEmail:@"craab@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kate Fierce"];
        [newEmployee setDepartment:@"Guidance"];
        [newEmployee setEmail:@"kfierce@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Pamela Hamilton"];
        [newEmployee setDepartment:@"Guidance"];
        [newEmployee setEmail:@"phamilton@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Learning Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Rachel Martin"];
        [newEmployee setDepartment:@"Marketing and Communications"];
        [newEmployee setEmail:@"rmartin@shorecrest.org"];
        [newEmployee setPhoneExt:@"(727) 522-2111 655"];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Raffi Darrow"];
        [newEmployee setDepartment:@"Marketing and Communications"];
        [newEmployee setEmail:@"rdarrow@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Heather Nicoll"];
        [newEmployee setDepartment:@"Marketing and Communications"];
        [newEmployee setEmail:@"hnicoll@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Dorothy Smay"];
        [newEmployee setDepartment:@"Media Center"];
        [newEmployee setEmail:@"dsmay@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Courtney Walker"];
        [newEmployee setDepartment:@"Media Center"];
        [newEmployee setEmail:@"cwalker@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Judy Roberge"];
        [newEmployee setDepartment:@"Registrar"];
        [newEmployee setEmail:@"jroberge@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
//        [allEmployees addObject:newEmployee];
//        newEmployee = [[Employee alloc]init];
//        [newEmployee setName:@"Subhashini Stevens"];
//        [newEmployee setDepartment:@"Service Learning"];
//        [newEmployee setEmail:@"sstevens@shorecrest.org"];
//        [newEmployee setPhoneExt:@""];
//        [newEmployee setBuildingName:@"MS Sher Center"];
//        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Monica Stypinski"];
        [newEmployee setDepartment:@"Summer and Afterschool Programs"];
        [newEmployee setEmail:@"mstypinski@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Anna Baralt"];
        [newEmployee setDepartment:@"Technology"];
        [newEmployee setEmail:@"abaralt@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Computer Lab"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Laura Anthony"];
        [newEmployee setDepartment:@"Technology"];
        [newEmployee setEmail:@"lanthony@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Bill Germer"];
        [newEmployee setDepartment:@"Technology"];
        [newEmployee setEmail:@"bgermer@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Tracie Belt"];
        [newEmployee setDepartment:@"The Learning Center"];
        [newEmployee setEmail:@"tbelt@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Susan Dattilo"];
        [newEmployee setDepartment:@"The Learning Center"];
        [newEmployee setEmail:@"sdattilo@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jan Miller"];
        [newEmployee setDepartment:@"The Learning Center"];
        [newEmployee setEmail:@"jmiller@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Carleen Vinall Haskell Library"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Nicole Carson"];
        [newEmployee setDepartment:@"Alpha"];
        [newEmployee setEmail:@"ncarson@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Alpha"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Meaghan Fenech"];
        [newEmployee setDepartment:@"Alpha"];
        [newEmployee setEmail:@"mfenech@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Alpha"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jennifer Rosoff"];
        [newEmployee setDepartment:@"Alpha"];
        [newEmployee setEmail:@"jrosoff@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Alpha"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Robin Wiltshire"];
        [newEmployee setDepartment:@"Alpha"];
        [newEmployee setEmail:@"rwiltshire@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Alpha"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Abbie Bowen"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"abowen@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Brendi Craver"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"bcraver@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Eddie Evans"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"eevans@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Wendy Jotch"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"wjotch@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Martha Reynolds"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"mreynolds@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Brendle Wolf"];
        [newEmployee setDepartment:@"Junior Kindergarten"];
        [newEmployee setEmail:@"bwolf@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Experiential School"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Amy Pope-Raab"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"araab@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Mini Gym"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Stacy Brandenburg"];
        [newEmployee setDepartment:@"Clinic"];
        [newEmployee setEmail:@"sbrandenburg@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Marie Confident"];
        [newEmployee setDepartment:@"Clinic"];
        [newEmployee setEmail:@"mconfident@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Extended Day"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Bradley Miller"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"bmiller@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Music + Resource Room"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Robert Mitchell"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"rmitchell@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Music + Resource Room"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Susan Rowe"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"srowe@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Art"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Nicole St. Amand"];
        [newEmployee setDepartment:@"Computer Science"];
        [newEmployee setEmail:@"nstamand@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jill Densa"];
        [newEmployee setDepartment:@"First Grade"];
        [newEmployee setEmail:@"jdensa@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Allison Hawley"];
        [newEmployee setDepartment:@"First Grade"];
        [newEmployee setEmail:@"ahawley@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Beth Rauman"];
        [newEmployee setDepartment:@"First Grade"];
        [newEmployee setEmail:@"brauman@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Gaye Whitecage"];
        [newEmployee setDepartment:@"First Grade"];
        [newEmployee setEmail:@"gwhitecage@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lori Bell"];
        [newEmployee setDepartment:@"Second Grade"];
        [newEmployee setEmail:@"lbell@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Danielle Cameron"];
        [newEmployee setDepartment:@"Second Grade"];
        [newEmployee setEmail:@"dcameron@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathleen Deegan"];
        [newEmployee setDepartment:@"Second Grade"];
        [newEmployee setEmail:@"kdeegan@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Marion O'Mullane"];
        [newEmployee setDepartment:@"Second Grade"];
        [newEmployee setEmail:@"momullane@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Susan Owen"];
        [newEmployee setDepartment:@"Second Grade"];
        [newEmployee setEmail:@"sowen@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jessi Acosta"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"jacosta@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Susan Doyle"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"sdoyle@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Darla Kiernan"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"dkiernan@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Megan Conroy Kotsko"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"mconroy@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Joanne Minke"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"jminke@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jennifer McMillian"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"jMcMillian@shorecrest.org"];            //McMillian showing up twice
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"John Schiaparelli"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"jschiaparelli@shorecrest.org"];         //Schiaperelli showing up twice
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Alissa Vigue"];
        [newEmployee setDepartment:@"Kindergarten"];
        [newEmployee setEmail:@"avigue@shorecrest.org"];                // Vigueshowing up twice
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Donna LaDuke"];
        [newEmployee setDepartment:@"Third Grade"];
        [newEmployee setEmail:@"dladuke@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jennifer Hobbs"];
        [newEmployee setDepartment:@"Third Grade"];
        [newEmployee setEmail:@"jhobbs@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Renee Hensler"];
        [newEmployee setDepartment:@"Third Grade"];
        [newEmployee setEmail:@"rhensler@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jane Boarman"];
        [newEmployee setDepartment:@"Fourth Grade"];                    // Boarman Not showing up in K-4 Classrooms
        [newEmployee setEmail:@"jboarman@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Sarah Finnemore"];
        [newEmployee setDepartment:@"Fourth Grade"];
        [newEmployee setEmail:@"sfinnemore@shorecrest.org"];            //Finnemore Not showing up in K-4 Classrooms
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christine Oman"];
        [newEmployee setDepartment:@"Fourth Grade"];                    //Oman Not showing up in K-4 Classrooms
        [newEmployee setEmail:@"coman@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Nichole Telemachos"];
        [newEmployee setDepartment:@"Fourth Grade"];
        [newEmployee setEmail:@"ntelemachos@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS K-4 Classrooms"];
        [newEmployee setSchool:@"LS"];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Woody Every"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"wevery@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Mini Gym"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Neal Wolfrath"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"nwolfrath@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Mini Gym"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Allwood Emili Jaime"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"ejaime-allwood@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Spanish"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Bennett Zamoff"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"bzamoff@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"LS Spanish"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Debbie Becker"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"dbecker@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lisa Bianco"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"lbianco@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Karen Bruggeman"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"kbruggeman@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Marcia Johnston"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"mjohnston@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@""];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jennifer Merrigan"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"jmerrigan@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Diana Tucker"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"dtucker@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Administration Building"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Lillian Nelson"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"lnelson@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Cynthia Williams"];
        [newEmployee setDepartment:@"Arts & Humanities"];
        [newEmployee setEmail:@"cwilliams@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christine Scoby"];
        [newEmployee setDepartment:@"Computer Science"];
        [newEmployee setEmail:@"cscoby@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Amy Brill"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"abrill@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Amy Cobb"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"acobb@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Craig MacDougall"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"cmacdougall@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Tedra Tatelbaum"];
        [newEmployee setDepartment:@"English"];
        [newEmployee setEmail:@"ttatelbaum@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Steven Brelsford"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"sbrelsford@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Anne Michelle Frey"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"afrey@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Mandy Howell"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"mhowell@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Christine Idinge"];
        [newEmployee setDepartment:@"Mathematics"];
        [newEmployee setEmail:@"cidinge@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Richard Cameron"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"rcameron@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Athletic Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Betsy Dougherty"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"bdougherty@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Athletic Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jason Montoya"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"jmontoya@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Athletic Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Justin Saunders"];
        [newEmployee setDepartment:@"Physical Education"];
        [newEmployee setEmail:@"jsaunders@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"Athletic Center"];
        [newEmployee setSchool:@""];

//        [allEmployees addObject:newEmployee];
//        newEmployee = [[Employee alloc]init];
//        [newEmployee setName:@"Curtis Cruise"];
//        [newEmployee setDepartment:@"Science"];
//        [newEmployee setEmail:@"ccruise@shorecrest.org"];
//        [newEmployee setPhoneExt:@""];
//        [newEmployee setBuildingName:@"MS Sher Center"];
//        [newEmployee setSchool:@""];

        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kathryn Jeakle"];
        [newEmployee setDepartment:@"Science"];
        [newEmployee setEmail:@"kjeakle@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];

        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Steven Dionne"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"sdionne@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];

        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"David Hodgson"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"dhodgson@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];

        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Sandy Waldron"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"swaldron@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Suzanne Wells"];
        [newEmployee setDepartment:@"Social Studies"];
        [newEmployee setEmail:@"swells@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Florent Agier"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"fagier@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];

        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Kristine Grant"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"kgrant@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Melanie Jarvis"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"mjarvis@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Arts & Science Center"];
        [newEmployee setSchool:@""];
        [allEmployees addObject:newEmployee];
        
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Julie Stewart"];
        [newEmployee setDepartment:@"World Languages"];
        [newEmployee setEmail:@"jstewart@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jonathan Davis"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"jdavis@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Jane Johnson"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"jjohnson@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];
        [newEmployee setName:@"Geraldine Perry"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"gperry@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
        newEmployee = [[Employee alloc]init];             
        [newEmployee setName:@"Linda Wooldridge"];
        [newEmployee setDepartment:@"Administration"];
        [newEmployee setEmail:@"lwooldridge@shorecrest.org"];
        [newEmployee setPhoneExt:@""];
        [newEmployee setBuildingName:@"MS Sher Center"];
        [newEmployee setSchool:@""];
        
        [allEmployees addObject:newEmployee];
//        newEmployee = [[Employee alloc]init];
//        [newEmployee setName:@""];
//        [newEmployee setDepartment:@""];
//        [newEmployee setEmail:@""];
//        [newEmployee setPhoneExt:@""];
//        [newEmployee setBuildingName:@""];
//        [newEmployee setSchool:@""];


    }
    
    return self;
    
}

-(NSArray *)allEmployees
{
    return allEmployees;
}
























@end
