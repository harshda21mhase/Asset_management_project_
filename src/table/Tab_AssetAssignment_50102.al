table 50102 "Asset Assignment"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {

        }
        field(2; "Assest ID"; Code[20])
        {
            TableRelation = "Asset Master"."Asset ID";

            trigger OnValidate()
            var
                RecAssetMaster: Record "Asset Master";
                RecAssetAssign: Record "Asset Assignment";
            begin
                if RecAssetMaster.Get("Assest ID") then
                    "Asset Description" := RecAssetMaster."Assest Types";

                RecAssetAssign.Reset();
                RecAssetAssign.SetRange("Assest ID", "Assest ID");
                RecAssetAssign.SetRange(Status, Status::Assigned);

            end;

        }
        field(10; "Asset Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Employee No"; Code[20])
        {
            TableRelation = EmployeeTab."Employee No";

            trigger OnValidate()
            var
                RecEmployee: Record "EmployeeTab";
            begin
                if RecEmployee.Get("Employee No") then
                    "Employee name" := RecEmployee."Employee Name";
            end;
        }
        field(9; "Employee name"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Assigned Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Return Date"; date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Return Date" <> 0D then
                    Status := Status::Retired;
                Message('Assets Return...');
            end;
        }
        field(6; Condition; Enum "Condition Enum")
        {
            DataClassification = ToBeClassified;
        }
        field(7; Status; Enum "Status Enum")
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
    var
        AssetAssignment: Record "Asset Assignment";
    begin
        if "Entry No" = 0 then begin
            AssetAssignment.Reset();
            if AssetAssignment.FindLast() then
                "Entry No" := AssetAssignment."Entry No" + 1
            else
                "Entry No" := 1;

            Status := Status::Assigned;
            Rec."Assigned Date" := Today;

        end;


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