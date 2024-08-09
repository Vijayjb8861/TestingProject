page 50121 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Student Details";
    CardPageId = 50122;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(USN;Rec.USN)
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
                field(Physics;Rec.Physics)
                {
                    ApplicationArea = All;
                    
                }
                field(Chemistry;Rec.Chemistry)
                {
                    ApplicationArea = All;
                    
                }
                field(Biology;Rec.Biology)
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
            action(RankPage)
            {
                ApplicationArea = All;
                RunObject = Page StudentRankPage;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}