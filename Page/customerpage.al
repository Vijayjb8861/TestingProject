page 50110 "Customer List Page"

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    Caption = 'customer list page';
    CardPageId = 50111;
  //  SourceTableView = where(Balance = filter(>10000));
   // Editable = false;
  
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No";Rec."No.")
                {
                    ApplicationArea = All;
                 
                    
                }
                field(CustomerName;Rec.Name)
                {
                    ApplicationArea = All;
             
                    
                }
                field(Balance;Rec.Balance)
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