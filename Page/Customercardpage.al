page 50111 "Customer Card Page"

{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    Caption = 'customer card page';
  //  SourceTableView = where(Balance = filter(>10000));
   // Editable = false;
  
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No";Rec."No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ShowMandatory = true;
                    
                }
                field(CustomerName;Rec.Name)
                {
                    ApplicationArea = All;
                    Importance = Standard;
                    NotBlank = true;
                }
                field(Balance;Rec.Balance)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                    
                }
              
                
            }
            group(Location)
            {
                 field(Address;Rec.Address)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                 field("Address 2";Rec."Address 2")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                    
                }
                 field(Contact;Rec.Contact)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
        area(Factboxes)
        {
            part(CustomerStatisticsFactnox; "Customer Statistics FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                
            }
            part(PartName54; "Student List Part Page")
            {
                ApplicationArea = All;
                SubPageView = where(Price = filter(>100));
                
            }
            // part(PartName1; "Customer Credit Information")
            // {
            //     ApplicationArea = All;
                
            // }
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