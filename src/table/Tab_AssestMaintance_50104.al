table 50104 "Assest Maintance Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "Assest ID"; Code[40])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Asset Master"."Asset ID";

            trigger OnValidate()
            var
                RecAssetMaster: Record "Asset Master";
            begin
                if RecAssetMaster.get("Assest ID") then
                    "Asset Description" := RecAssetMaster."Description";
            end;
        }
        field(10; "Asset Description"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Request Date"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Maintenance Date"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Completion Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Vendor Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Repair Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Description; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(18; Status; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Status 1"; Enum "Maintance status")
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