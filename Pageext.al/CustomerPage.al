pageextension 50101 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        // addafter(Address)
        // {
        //  field(Facebook;Rec.Facebook)
        //     {
        //         ApplicationArea = All;

        //     }
        // }

        addafter(General)
        {
            group(SocialMedia)
            {
                field(Facebook; Rec.Facebook)
                {
                    ApplicationArea = All;

                }

            }     
        }
        // modify(Address)
        // {
        //    // Visible = false;
        // }

        moveafter(Address;"E-Mail")
    }

    actions
    {
        // Add changes to page actions here
        addafter(ApprovalEntries)
        {
            action(TestAction)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category15;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
        modify(ApprovalEntries)
        {
            Promoted = true;
            PromotedCategory = Category15;
        }
    }

    var
        myInt: Integer;
}