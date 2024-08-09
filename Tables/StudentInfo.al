table 50101 StudentDetails
{
    DataClassification = ToBeClassified;
    caption = 'Student Information';
    DataCaptionFields = StudentID,Name;
    LookupPageId = StudentList;
  
     
    fields
    {
        field(1;StudentID;Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Email; text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;

            trigger OnValidate()
            var
                myInt: Integer;
                email : Text[100];

            begin
               email := Rec.Email;
              if NOT email.Contains('@gmail.com') then begin
                Error('Enter the correct email which ends with @gmail.com');
              end;

            end;
        }
        field(4; phone; text[10])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(5; Mentor ; Code[20])
        {
            DataClassification = ToBeClassified;
            // TableRelation = StudentDetails;
        //    TableRelation = Resource where(Type = const(PERSON)) ;
            TableRelation = if (CourseType = const("Self-paced")) Resource
            else if (CourseType = const(Offline)) Customer
            else if (CourseType = const(Online)) Resource;
        }
        field(6; MentorName; text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field(Mentor)));
        }
        
        field(7;CourseName;Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Name';
        }
        field(8; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Self-paced","Online","Offline";
        }
        field(9; Price; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; AVG; Integer)
        {
           
            FieldClass = FlowField;
            CalcFormula = average(StudentDetails.Price);
        }
        field(11; Image; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
        }

        
    }
    
    keys
    {
        key(pk;StudentID)
        {
            Clustered = true;
        }
        // key(sk; Name)
        // {
            
        // }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(Brick; Name,StudentID,Email,Mentor){

        }
        fieldgroup(DropDown;StudentID,Name,Email,phone){}
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        Message('table 1 onsert trigger');
    end;
    
    trigger OnModify()         //apart from primary key
    begin
        Message('the record is modified');
        Message('the current record is Rec is %1',Rec.Name);
        Message('the old record is xRec is %1', Xrec.Name);
    end;
    
    trigger OnDelete()
    begin
        Message('the record is deleted');
    end;
    
    trigger OnRename()           //primary key
    begin
        Message('the record is renamed');
    end;
    
}


