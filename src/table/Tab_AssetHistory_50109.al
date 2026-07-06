table 50109 "Asset History Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {
            AutoIncrement = true;

        }
        field(2; "Asset Id"; Code[40])
        {
            TableRelation = "Asset Master"."Asset ID";

            trigger OnValidate()
            var
                RecAssetMaster: Record "Asset Master";
            begin
                if RecAssetMaster.Get("Asset Id") then
                    "Asset Description" := RecAssetMaster."Assest Types";

            end;
        }
        field(3; "Asset Description"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Employee No"; Code[40])
        {
            TableRelation = EmployeeTab."Employee No";

            trigger onvalidate()
            var
                RecEmp: Record EmployeeTab;
            begin
                If RecEmp.Get("Employee No") then
                    "Employee Name" := RecEmp."Employee Name";
            end;

        }
        field(5; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Activity Date"; Date)
        {
        }

        field(7; Description; Text[250])
        {
        }

        field(8; "Reference No."; Code[20])
        {
        }

        field(9; "Performed By"; Code[50])
        {
        }
        field(10; "Activity Type"; Enum "Asset Activity")
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