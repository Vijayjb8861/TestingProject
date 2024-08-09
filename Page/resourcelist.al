page 50105 ResourceListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Resource;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = All;
                    
                }
                 field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    
                }
                 field(Type;Rec.Type)
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