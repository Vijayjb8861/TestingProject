table 50115 "Student Details"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;USN; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Email; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Physics; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Chemistry; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Biology; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; USN)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    var
        studentrankvar : Record StudentRank;
    begin
        studentrankvar.USN := Rec.USN;
        studentrankvar.Insert();
    end;
    
    trigger OnModify()
    var
        studentrankvar : Record StudentRank;
    begin
        studentrankvar.Get(Rec.USN);
        studentrankvar.Name := Rec.Name;
        studentrankvar.Total := Rec.Physics + Rec.Chemistry + Rec.Biology;
        studentrankvar.Modify();
        Commit();
    end;
    
    trigger OnDelete()
    var
        studentrankvar : Record StudentRank;
    begin
        studentrankvar.Get(Rec.USN);
        studentrankvar.Delete();
        Commit();
    end;
    
    trigger OnRename()
    var
        studentrankvar : Record StudentRank;
    begin
        Message('the new usn is %1',Rec.USN);
        Message('the old usn is %1',xRec.USN);

        studentrankvar.Get(xRec.USN);
        studentrankvar.Rename(Rec.USN);
        Commit();

    end;
    
}