#import "ViewController.h"
#import "AppDelegate.h"

#import <React/RCTRootView.h>

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  RCTBridge *bridge = [((AppDelegate *)[NSApp delegate])bridge];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge moduleName:@"react_native_macos_support" initialProperties:nil];

  NSView *view = [self view];

  [view addSubview:rootView];
  [rootView setBackgroundColor:[NSColor windowBackgroundColor]];
  [rootView setFrame:[view bounds]];
  [rootView setAutoresizingMask:(NSViewMinXMargin | NSViewMinXMargin | NSViewMinYMargin | NSViewMaxYMargin | NSViewWidthSizable | NSViewHeightSizable)];
}

@end
