//
//  ONTIdPreViewController.m
//  cyano
//
//  Created by Apple on 2019/1/21.
//  Copyright © 2019 LR. All rights reserved.
//

#import "ONTIdPreViewController.h"
#import "ONTIdViewController.h"
#import "ONTIdImportViewController.h"
@interface ONTIdPreViewController ()

@end

@implementation ONTIdPreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createNav];
    [self createUI];
}
-(void)createUI{
    UIImageView * topImage = [[UIImageView alloc]init];
    topImage.image = [UIImage imageNamed:@"ONTOLogo" inBundle:ONTOBundle compatibleWithTraitCollection:nil];
    [self.view addSubview:topImage];
    
    UILabel * whatLB = [[UILabel alloc]init];
    whatLB.text = @"What is an ONT ID?";
    whatLB.textAlignment = NSTextAlignmentCenter;
    whatLB.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
    [self.view addSubview:whatLB];
    
    UILabel * WhatOntId = [[UILabel alloc]init];
    WhatOntId.text = @"ONT ID is a passport to the blockchain world. It is a distributed identity framework supporting identity verification and authentication for people, assets, objects, and affairs.";
    WhatOntId.numberOfLines = 0;
    WhatOntId.font = [UIFont systemFontOfSize:14 weight:UIFontWeightMedium];
    WhatOntId.textColor = [UIColor colorWithHexString:@"#6E6F70"];
    [WhatOntId changeSpace:1 wordSpace:1];
    [self.view addSubview:WhatOntId];
    
    UIButton * createONTId = [[UIButton alloc]init];
    createONTId.backgroundColor = [UIColor blackColor];
    [createONTId setTitle:@"CREATE ONT ID" forState:UIControlStateNormal];
    [createONTId setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    createONTId.titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightBold];
    [createONTId.titleLabel changeSpace:0 wordSpace:3];
    [createONTId addTarget:self action:@selector(createONTId) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:createONTId];
    
    UIButton * importONTId = [[UIButton alloc]init];
    importONTId.backgroundColor = [UIColor whiteColor];
    [importONTId setTitle:@"IMPORT ONT ID" forState:UIControlStateNormal];
    [importONTId setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    importONTId.titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightBold];
    [importONTId.titleLabel changeSpace:0 wordSpace:3];
    importONTId.layer.borderColor = [[UIColor blackColor]CGColor];
    importONTId.layer.borderWidth = 1;
    [importONTId addTarget:self action:@selector(importONTId) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:importONTId];
    
    UILabel * bottomLB = [[UILabel alloc]init];
    bottomLB.text = @"Powered by Ontology Blockchain";
    bottomLB.font = [UIFont systemFontOfSize:14 weight:UIFontWeightMedium];
    bottomLB.textAlignment = NSTextAlignmentCenter;
    [bottomLB changeSpace:0 wordSpace:1];
    [self.view addSubview:bottomLB];
    
    [topImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(30);
        make.width.height.mas_offset(100);
    }];
    
    [whatLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(topImage.mas_bottom).offset(20);
    }];
    
    [WhatOntId mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(38);
        make.right.equalTo(self.view).offset(-38);
        make.top.equalTo(whatLB.mas_bottom).offset(10);
    }];
    
    [createONTId mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(58);
        make.right.equalTo(self.view).offset(-58);
        make.top.equalTo(WhatOntId.mas_bottom).offset(50);
        make.height.mas_offset(60);
    }];
    
    [importONTId mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(58);
        make.right.equalTo(self.view).offset(-58);
        make.top.equalTo(createONTId.mas_bottom).offset(30);
        make.height.mas_offset(60);
    }];
    
    [bottomLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        if (ONTOIsiPhoneX) {
            make.bottom.equalTo(self.view).offset(-30 -34);
        }else{
            make.bottom.equalTo(self.view).offset(-30);
        }
    }];
}
-(void)createNav{
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBarController.tabBar.hidden = YES;
    [self setTitle:@"ONT ID"];
    [self setNavLeftImageIcon:[UIImage imageNamed:@"BackWhite"] Title:@""];
    [self setNavLeftImageIcon:[UIImage imageNamed:@"ONTOBack" inBundle:ONTOBundle compatibleWithTraitCollection:nil] Title:@""];
    [self setNavRightImageIcon:[UIImage imageNamed:@"ONTODot" inBundle:ONTOBundle compatibleWithTraitCollection:nil] Title:@""];
}
-(void)navLeftAction{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)createONTId{
    ONTIdViewController * vc = [[ONTIdViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)importONTId{
    ONTIdImportViewController * vc = [[ONTIdImportViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end