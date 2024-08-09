page 50119 "Collections"
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
        // Myrray: array[5] of Integer;          //decleration
        // myarray2: array[2, 2] of Integer;

        // mylist : List of [Text];
        // mylist2 : list of [text];
        listofkeys: List of [text];
        listofvalues: List of [text];
        mykey : text;
        CountriesDictionary: Dictionary of [text, Text];
    begin

        // Message('the 4th value is %1',myarray2[2,2]);


        // Message('the value at 2nd postion is %1',mylist.Get(2));
        // Message('%1',mylist.Contains('john'));
        //     Message('the length is %1', mylist.Count);

        //   //  mylist.Set(3,'jacob');
        //     mylist.Insert(3,'jacob');
        //     Message('%1', mylist.Contains('jacob'));
        //      Message('the length is %1', mylist.Count);

        // Message('the index is %1',mylist.LastIndexOf('arun'));

        // mylist.AddRange(mylist2);
        // Message('%1', mylist.Contains('cd'));


        CountriesDictionary.Add('USA', 'Washington DC');
        CountriesDictionary.Add('IND', 'Delhi');
        CountriesDictionary.Add('Australia', 'Canberra');
        CountriesDictionary.Add('Nepal', 'Kathmandu');

        //     Message('%1',CountriesDictionary.ContainsKey('IND'));

        //    Message('the length is %1',CountriesDictionary.Count);

        //    CountriesDictionary.Set('IND','Mumbai');

        //     Message('%1',CountriesDictionary.Get('USA'));

        listofkeys := CountriesDictionary.Keys;
        listofvalues := CountriesDictionary.Values;

        // Message('%1', listofkeys.Contains('Nepal'));
        // Message('%1', listofkeys.Count);

        foreach mykey in listofkeys do begin
            Message(mykey);
        end;

    end;

    var
        myInt: Integer;
}