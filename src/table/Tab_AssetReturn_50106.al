table 50106 "Asset Return Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {
            AutoIncrement = True;
        }
        field(2; "Assest ID"; Code[20])
        {
            TableRelation = "Asset Master"."Asset ID";
        }
        field(3; "Employee No"; Code[20])
        {
            TableRelation = EmployeeTab."Employee No";


        }
        field(12; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Return Date"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Condition; Enum "Condition Enum")
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Status"; enum "Status Enum")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {

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