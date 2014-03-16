#import "ViewController.h"
#import "ModelContainer.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet ModelContainer* modelContainer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Person *person = [Person new];
    person.name = @"Chris";
    self.modelContainer.model = person;
}

@end