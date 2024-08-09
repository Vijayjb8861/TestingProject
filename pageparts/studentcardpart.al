page 50116 "Student Card Part Page"
{
    PageType = cardpart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentDetails;
    
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
                field(Image;Rec.Image)
                {
                    ApplicationArea = All;
                    
                }
                 field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }

                
            }
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
    
    var
        myInt: Integer;
}