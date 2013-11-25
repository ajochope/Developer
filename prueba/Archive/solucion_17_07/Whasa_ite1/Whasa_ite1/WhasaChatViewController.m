//
//  WhasaChatViewController.m
//  Whasa_ite1
//
//  Created by chipont on 18/07/13.
//  Copyright (c) 2013 corenetworks. All rights reserved.
//

#import "WhasaChatViewController.h"
#import "Chat.h"

@interface WhasaChatViewController ()

@property (strong, nonatomic) IBOutlet UITextView *conversacion;
@property (strong, nonatomic) IBOutlet UINavigationItem *navItem;


@property (strong, nonatomic) IBOutlet UITextField *mensaje;
@property (strong, nonatomic) NSMutableString *conversacionAux;
@property (strong, nonatomic) Chat  *chat;
@end

@implementation WhasaChatViewController

-(void) refrescarMensajes : (NSNotification *) notification
{
    for(ReceiveMessage *mensajeRec in notification.object){
       [_conversacionAux appendFormat:@"\n%@:%@", mensajeRec.from, mensajeRec.message];
    }
    _conversacion.text = _conversacionAux.description;
}


- (IBAction)enviarMensaje:(id)sender {
    [_conversacionAux appendFormat:@"\n%@:%@", _nick, _mensaje.text];
    _conversacion.text = _conversacionAux.description;
    
    SendMessage *enviaMensaje = [[SendMessage alloc]initWithData:_mensaje.text from:_nick to:_contacto];
    [_chat sendMessage: enviaMensaje];
    _mensaje.text = @"";
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];   
    _navItem.prompt = [NSString stringWithFormat:@"Hablando con %@", _contacto];
    
    if (!_conversacionAux)
        _conversacionAux = [[NSMutableString alloc]init];
    _chat = [[Chat alloc] initWithRegisterController:nil from:_nick];
    // para trabajar con notificacion
    // @selector informamos al centro de notificacion que metodo queremos invocar
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refrescarMensajes:) name:@"RecepcionChat" object:nil];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    const int movementDistance = 216;
    const float movementDuration = 0.3f; 
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

@end
