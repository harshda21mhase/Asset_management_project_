table 50107 "Assets Replacement"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(11; "Maintaince No."; Code[40])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Assets Id"; Code[40])
        {
            TableRelation = "Asset Master"."Asset ID";
            caption = 'Old Asset ID';

            trigger OnValidate()
            var
                RecAssetMaster: Record "Asset Master";
            begin
                If RecAssetMaster.Get("Assets Id") then
                    "Assets Description" := RecAssetMaster."Assest Types";
            end;
        }


        field(14; "New Asset ID"; Code[40])
        {
            TableRelation = "Asset Master"."Asset ID";

            trigger onvalidate()
            var
                RecAssetMaster: Record "Asset Master";
            begin
                if RecAssetMaster.Get("New Asset ID") then
                    "New asset Description" := RecAssetMaster."Assest Types";
            end;
        }
        field(15; "New asset Description"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Assets Description"; text[100])
        {
            Caption = 'Old Asset ID';
            DataClassification = ToBeClassified;
        }
        field(4; "Maintenance Date"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Repair Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Vendor Name"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Issue Description"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Status; Enum "Replace Status")
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; MyField)
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