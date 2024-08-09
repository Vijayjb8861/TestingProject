page 50113 "Student List Part Page"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentDetails;
    
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
               field(Email;Rec.Email)
                {
                    ApplicationArea = All;
                    
                }
                field(phone;Rec.phone)
                {
                    ApplicationArea = All;
                    
                }
                 field(Price;Rec.Price)
                {
                    ApplicationArea = All;
                    
                }

            }
        }
        // area(Factboxes)
        // {
            
        // }
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