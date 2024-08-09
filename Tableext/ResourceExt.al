tableextension 50102 ResourceExt extends Resource
{
    LookupPageId = ResourceListPage;

    fields
    {
        // Add changes to table fields here
        
    }
    
    keys
    {
        // Add changes to keys here

    }
    
    fieldgroups
    {
        // Add changes to field groups here
        
        addlast(DropDown;"Unit Cost",Address){}
        
    }
    
    var
        myInt: Integer;
}