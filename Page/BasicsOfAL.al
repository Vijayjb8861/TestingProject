page 50109 "Basics of AL"
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
        // Color: Option Green,Red,Yellow;
        MyFavColor : Enum Color;
    begin
        // Color := Color::Red;
        // Message('the selected color is %1',Color);

        MyFavColor := Color::Blue;
        Message('the selected color is %1',MyFavColor);
    end;

   
    var
        myInt: Integer;
}

enum 50100 Color
{
    Extensible = true;
    
    value(0; Green)
    {
    }
    value(1; yellow)
    {
    }
    value(2; red)
    {
    }
}


enumextension 50101 ColorExt extends Color
{
    value(3; Blue)
    {

    }
}

