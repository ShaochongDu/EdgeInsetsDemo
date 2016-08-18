//
//  ViewController.m
//  EdgeInsetsDemo
//
//  Created by Caxa on 16/1/27.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "ViewController.h"

#define kDialogueViewHeight 80  //  每个对话框高度
#define kDialogueSpace 10   //  每个对话框间距
@interface ViewController ()
{
    NSInteger dialogueCount;
}
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dialogueCount = 0;
    
    /**
     1、UIEdgeInsets中的值都可以以像素为单位进行设置
     2、测量凸起部分距离图片边缘值时，若有存在圆角部分，计算时最好将圆角部分除去，如: - (void)addDialogueLeft;方法中左侧凸起部分为12像素，图片额外含圆角部分8像素，则UIEdgeInsets中left和right值>= (12+8)计算
    **/
    dialogueCount++;
    [self addDialogueTopCenter];
    
    [self addDialogueBottomCenter];
    dialogueCount++;
    
    //  左侧~右侧
    [self addDialogueLeft];
    dialogueCount++;
    
    [self addDialogueRight];
    dialogueCount++;
    
    //  左上~左下~右上~右下
    [self addDialogueTopLeft];
    dialogueCount++;
    
    [self addDialogueBottomLeft];
    dialogueCount++;
    
    [self addDialogueTopRight];
    dialogueCount++;
    
    [self addDialogueBottomRight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  添加顶部凸起背景图片
 *  中间，不需要拉伸
 */
- (void)addDialogueTopCenter
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueTopCenter"];
    bgImageView.image = image;
    [self.contentView addSubview:bgImageView];
    
    dialogueCount++;
}

/**
 *  添加底部凸起背景图片
 *  中间，不需要拉伸
 */
- (void)addDialogueBottomCenter
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueBottomCenter"];
    bgImageView.image = image;
    [self.contentView addSubview:bgImageView];
}

/**
 *  添加左侧凸起背景图片
 *
 */
- (void)addDialogueLeft
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueLeft"];
    /*  该图片尺寸为354*97
     **  1、凸起部分右侧距离图片左侧边缘大概为20(包括圆角部分宽度)，因此UIEdgeInsets中left和right值>= 20即可.(此值若不合适继续调大)
     **  2、不涉及上下距离，整体高度为97，因此UIEdgeInsets中top和bottom值<= 48即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(45, 20, 45, 20);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
    
}

/**
 *  添加右侧凸起背景图片
 *
 */
- (void)addDialogueRight
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueRight"];
    /*  该图片尺寸为354*97
     **  1、凸起部分左侧距离图片右侧边缘大概为20(包括圆角部分宽度)，因此UIEdgeInsets中left和right值>= 20即可.(此值若不合适继续调大)
     **  2、不涉及上下距离，整体高度为97，因此UIEdgeInsets中top和bottom值<= 48即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(45, 20, 45, 20);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
}

/**
 *  添加左上角凸起背景图片
 */
- (void)addDialogueTopLeft
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueTopLeft"];
    /*  该图片尺寸为343*106
     **  1、凸起部分右侧距离图片左侧边缘大概为27，因此UIEdgeInsets中left和right值>= 27即可.(此值若不合适继续调大)
     **  2、凸起部分底部图片高度（除去凸起高度）大概为98，因此UIEdgeInsets中top和bottom值<= 49即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(40, 27, 40, 27);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
}

/**
 *  添加左下角凸起背景图片
 */
- (void)addDialogueBottomLeft
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueBottomLeft"];
    /*  该图片尺寸为343*106
     **  1、凸起部分右侧距离图片左侧边缘大概为23，因此UIEdgeInsets中left和right值>= 23即可.(此值若不合适继续调大)
     **  2、凸起部分底部图片高度（除去凸起高度）大概为97，因此UIEdgeInsets中top和bottom值<= 48即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(40, 23, 40, 23);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
}

/**
 *  添加右上角凸起背景图片
 */
- (void)addDialogueTopRight
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueTopRight"];
    /*  该图片尺寸为343*106
     **  1、凸起部分左侧距离图片右侧边缘大概为22，因此UIEdgeInsets中left和right值>= 22即可.(此值若不合适继续调大)
     **  2、凸起部分底部图片高度（除去凸起高度）大概为98，因此UIEdgeInsets中top和bottom值<= 49即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(40, 22, 40, 22);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
}

/**
 *  添加右下角凸起背景图片
 */
- (void)addDialogueBottomRight
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, dialogueCount * (kDialogueSpace + kDialogueViewHeight), 315, kDialogueViewHeight)];
    UIImage *image = [UIImage imageNamed:@"dialogueBottomRight"];
    /*  该图片尺寸为343*106
     **  1、凸起部分左侧距离图片右侧边缘大概为54，因此UIEdgeInsets中left和right值>= 54即可.(此值若不合适继续调大)
     **  2、凸起部分底部图片高度（除去凸起高度）大概为96，因此UIEdgeInsets中top和bottom值<= 48即可.(此值若不合适继续调小)
     */
    UIEdgeInsets insets = UIEdgeInsetsMake(45, 54, 45, 54);
    UIImage *insetImage = [image resizableImageWithCapInsets:insets];
    bgImageView.image = insetImage;
    [self.contentView addSubview:bgImageView];
}




@end
