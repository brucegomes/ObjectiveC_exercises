//
//  calcStickerBrowserViewController.m
//  CalcOfTheDay
//
//  Created by Gomes, Bruce on 10/3/18.
//  Copyright © 2018 Gomes, Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Messages/Messages.h>

/* @interface calcStickerBrowserViewController : MSStickerBrowserViewController{
    
    
}

@end


@implementation calcStickerBrowserViewController

<#methods#>

@end
 */

/*
#import "MessagesViewController.h"
#import "StickersManager.h"



@interface MessagesViewController () <MSStickerBrowserViewDataSource>

@property (nonatomic, strong) NSArray* stickers;
@property (nonatomic, strong) MSStickerBrowserViewController* browser;

@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [MagicalRecord setupCoreDataStackCarefully];
    [self createStickerBrowser];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    
    [self loadStickers];
    [self.browser.stickerBrowserView reloadData];
}

#pragma mark - MSStickerBrowserViewDataSource

- (NSInteger)numberOfStickersInStickerBrowserView:(MSStickerBrowserView *)stickerBrowserView {
    return self.stickers.count;
}

- (MSSticker *)stickerBrowserView:(MSStickerBrowserView *)stickerBrowserView stickerAtIndex:(NSInteger)index {
    return self.stickers[index];
}


#pragma mark - load Stickers

- (void)loadStickers {
    NSArray* userStickers = [StickersManager loadUserStickers];
    NSMutableArray* messagesStickers = [NSMutableArray arrayWithCapacity:userStickers.count];
    for (Stickers* userSticker in userStickers) {
        NSString* imageName = [NSString stringWithFormat:@"%@_%@_%@@3x", userSticker.shortName, userSticker.levelString, userSticker.moodString];
        
        NSURL* urlPath = [[NSBundle mainBundle] URLForResource:imageName withExtension:@"png"];
        if (!urlPath) {
            NSLog(@"MISSED IMAGE %@", imageName);
        }
        MSSticker* messageSticker = [[MSSticker alloc] initWithContentsOfFileURL:urlPath localizedDescription:imageName error:nil];
        [messagesStickers addObject:messageSticker];
    }
    self.stickers = messagesStickers;
}

#pragma mark - StickersBrowser

- (void)createStickerBrowser {
    if (!self.browser) {
        self.browser = [[MSStickerBrowserViewController alloc] initWithStickerSize: MSStickerSizeSmall];
        [self addChildViewController:self.browser];
        [self.view addSubview:self.browser.view];
        self.browser.stickerBrowserView.dataSource = self;
    }
}

@end
*/
