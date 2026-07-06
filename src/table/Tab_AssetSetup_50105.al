table 50105 "Asset Setup Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary key"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Asset No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Asset No")
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
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}