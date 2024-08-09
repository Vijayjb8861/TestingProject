tableextension 50101 CustomerExt extends Customer
{
    DataCaptionFields = Address;
    
    fields
    {
        // Add changes to table fields here
        field(50101;Facebook ; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }

        // modify(Address)
        // {
        //     Caption = 'Location';
        // }
       



    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
   

    var
        myInt: Integer;
}