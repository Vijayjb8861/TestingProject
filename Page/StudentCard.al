page 50102 StudentCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentDetails;
    PromotedActionCategories = ',,,Calculations';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(StudentID;Rec.StudentID)
                {
                    ApplicationArea = All;
                    
                }
                 field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                 field(Email;Rec.Email)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        
                    end;
                }
                 field(phone;Rec.phone)
                {
                    ApplicationArea = All;
                    
                }
                 field(Mentor;Rec.Mentor)
                {
                    ApplicationArea = All;
                    
                }
                 
                    field(CourseName;Rec.CourseName)
                {
                    ApplicationArea = All;
                    
                }
                  field(MentorName;Rec.MentorName)
                {
                    ApplicationArea = All;
                    Caption = 'Course Name';
         
                }
                 field(CourseType;Rec.CourseType)
                {
                    ApplicationArea = All;
                    
                }
                 field(Price;Rec.Price)
                {
                    ApplicationArea = All;
                    
                }
                  field(AVG;Rec.AVG)
                {
                    ApplicationArea = All;
                    
                }
                //  field(Image;Rec.Image)
                // {
                //     ApplicationArea = All;
                    
                // }

            }
        }
        area(FactBoxes)
        {
            part(PartName12; "Student Card Part Page")
            {
                ApplicationArea = All;
                SubPageLink = StudentID = field(StudentID);
                
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(CustomerList)
            {
                ApplicationArea = All;
                Caption = 'Customer List';
                Promoted = true;
                //PromotedOnly = true;
                PromotedCategory = Category4;
                RunObject = page "Customer List";
                Image = Download;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
        area(Reporting)
        {
            action(Action2)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var     
                    num1,num2 : Integer;
                    sum : Integer;
                begin
                    num1 := 10;
                    num2 := 20;
                    sum := num1 + num2;
                    Message('the sum of %1 and %2 is %3',num1,num2,sum);

                end;
            }
        }
        area(Creation)
        {
            action(Action3)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                var         

                begin
                    
                end;
            }
        }
        area(Navigation)
        {
            action(Action4)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }

    }

    trigger OnModifyRecord():Boolean
    var
        myInt: Integer;
    begin
        // Message('on modify, the name is (Rec) %1',Rec.Name);
        // Message('on modify, the previous name is %1',xRec.Name);
    end;

    
    var
        Student: Record StudentDetails;

  

}