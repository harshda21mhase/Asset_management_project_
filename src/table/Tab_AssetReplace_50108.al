table 50108 "Asset Replace Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Maintaince no"; Code[20])
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
        field(9; "Employee No"; Code[50])
        {
            // TableRelation = EmployeeTab."Employee No";
            // trigger OnValidate()
            // var
            //     RecEmployee: Record EmployeeTab;
            // begin
            //     If RecEmployee.Get("Employee No") then
            //         "Employee Name" := RecEmployee."Employee Name";
            // end;

        }
        field(10; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(16; Processed; Boolean)
        {
            Editable = false;
        }

        field(3; "Assets Description"; text[100])
        {
            Caption = 'Old Asset Description';
            DataClassification = ToBeClassified;
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
                "Employee No" := RecAssetMaster."Employee No";
                "Employee Name" := RecAssetMaster."Employee Name";
            end;
        }
        field(15; "New asset Description"; text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Maintaince no")
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
        AssetReplace: Record "Asset Replace Table";
    begin
        AssetReplace.Reset();

        if AssetReplace.FindLast() then
            "Maintaince no" := 'MNT' + Format(AssetReplace.Count + 1)
        else
            "Maintaince no" := 'MNT1';

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