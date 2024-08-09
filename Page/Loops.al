page 50114 Loops
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // field(Name; NameSource)
                // {
                //     ApplicationArea = All;

                // }
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

    trigger OnOpenPage()
    var
        i: Integer;
        total: Integer;
        codeunitref : Codeunit MyCodeunit1;
    begin
        //for-to-do
        i := 1;
        // for i:=1 to 5 do begin
        //     total := total + 5;
        // end;

        // Message('the total is %1',total);


        //for-downto-do

        // for i := 5 downto 1 do begin
        //     total := total + 5;
        //     Message('%1', i);

        // end;

        //     Message('the total is %1', total);
        // end;


        // while i<7 do begin

        //     total := total + 5;
        //     i := i + 1;
        // end;

        // Message('the total is %1', total);

        //repeat until

        repeat 
            i := i + 1;
            total := total + 5;
        until i > 7;

       // Message('the total is %1', total);

    //    total := codeunitref.addition(20,60);
       Message('the total is %1', total);

    end;


    var
        myInt: Integer;
}