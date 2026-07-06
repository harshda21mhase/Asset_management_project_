table 50101 "Asset Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Asset ID"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Asset Type"; option)
        {
            OptionMembers = "Laptop","Dekstop","Mouse","Keyboard","Earpods";
        }
        field(10; "Assest Types"; text[100])
        {
            //TableRelation = Item.Description;

        }
        field(12; "Item No."; Code[20])
        {
            TableRelation = "Fixed Asset"."No.";

            trigger OnValidate()
            var
                RecFixedAssest: REcord "Fixed Asset";
            begin
                if RecFixedAssest.Get("Item No.") then
                    "Assest Types" := RecFixedAssest.Description;
                Description := RecFixedAssest."Search Description";
            end;
        }
        field(3; Description; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Serial No"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Purhcase Date"; date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Purchase Cost';
        }
        field(7; "Warrenty Expiray date"; date)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Status; Enum "Status Enum")
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Employee No"; Code[40])
        {
            Dataclassification = ToBeClassified;
            TableRelation = EmployeeTab."Employee No";

            trigger OnValidate()
            var
                RecEmp: Record EmployeeTab;
            begin
                if RecEmp.GEt("Employee No") then
                    "Employee Name" := RecEmp."Employee Name";
            end;
        }
        field(11; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Asset ID")
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
        NoSeriesMgt: Codeunit "No. Series";
    begin
        if "Asset ID" = '' then
            "Asset ID" := NoSeriesMgt.GetNextNo('A001');
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