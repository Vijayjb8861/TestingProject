page 50101 StudentList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentDetails;
    CardPageId = 50102;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                    
                }
                 field(phone;Rec.phone)
                {
                    ApplicationArea = All;
                    
                }
                 field(Mentor;Rec.Mentor)
                {
                    ApplicationArea = All;
                    
                }
                 field(MentorName;Rec.MentorName)
                {
                    ApplicationArea = All;
                    Caption = 'Mentor Name';
                    
                }
                 
                 field(CourseName;Rec.CourseName)
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
                

            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }

   
}