//
//  ViewController.m
//  LightViewController
//
//  Created by mulp on 11/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import "LightViewController.h"
#import "ArrayDataSource.h"
#import "TableCell.h"
#import "DataSourceItem.h"
#import "TableCell+ConfigureContent.h"
#import "StoreManager.h"

static NSString * const CellIdentifier = @"LightCell";

@interface LightViewController ()

    @property (nonatomic, strong) ArrayDataSource *dataSource;

@end

@implementation LightViewController

//- (void)loadView {
//    [self loadView];
//    UITableView *tbvc = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
//    self.tableView = tbvc;
//    self.view = tbvc;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    UITableView *tbvc = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
//    [self.view addSubview:tbvc];
    
    self.navigationItem.title = @"Light";
    [self setupTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupTableView {
    TableViewCellConfigureBlock configureCell = ^(TableCell *cell, DataSourceItem *content) {
        [cell configureCellContent:content];
    };
    
    NSMutableArray *ds = [[StoreManager sharedManager] readFromSource];
    self.dataSource = [[ArrayDataSource alloc] initWithItems:ds
                                              cellIdentifier:CellIdentifier
                                          configureCellBlock:configureCell];
    
    self.tableView.dataSource = self.dataSource;
    [self.tableView registerClass:[TableCell class] forCellReuseIdentifier:CellIdentifier];

    // Uncomment here if you want to use your xib file for table cell
//    [self.tableView registerNib:[PhotoCell nib] forCellReuseIdentifier:CellIdentifier];
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    PhotoViewController *photoViewController = [[PhotoViewController alloc] initWithNibName:@"PhotoViewController"
//                                                                                     bundle:nil];
//    photoViewController.photo = [self.photosArrayDataSource itemAtIndexPath:indexPath];
//    [self.navigationController pushViewController:photoViewController animated:YES];
}

@end
