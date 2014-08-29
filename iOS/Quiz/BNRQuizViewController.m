//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Max Rogers on 8/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic,weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *answers;

@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    /* Call the init method implemented by the superclass”
    
    Excerpt From: Keur, Christian. “iOS Programming: The Big Nerd Ranch Guide (4th Edition) (Big Nerd Ranch Guides).” iBooks.
    */
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        //Create two arrays filled with questions and answers
        self.questions = @[@"From what is cognac made?",@"What is 7+7?",@"What is the captial of Vermont"];
        self.answers = @[@"Grapes",@"14",@"Monotpelier"];
    }
    //Return the Address of the new object
    return self;
}

-(IBAction)showQuestion:(id)sender{
    //Step to the next question
    self.currentQuestionIndex++;
    //Am I past the final question?
    if(self.currentQuestionIndex >= [self.questions count]){
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }
    //Get the string at the current index
    NSString *question = self.questions[self.currentQuestionIndex];
    //Displaying the string in the question label
    self.questionLabel.text = question;
    //Reset the Answer Label
    self.answerLabel.text = @"???";
}
-(IBAction)showAnswer:(id)sender{
    //What is the ansewr of the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    //display the answer
    self.answerLabel.text = answer;    
}

@end
