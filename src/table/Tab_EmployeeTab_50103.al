table 50103 "EmployeeTab"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";

            trigger OnValidate()
            var
                RecEmployee: Record Employee;
            begin
                if RecEmployee.Get("Employee No") then
                    "Employee Name" := RecEmployee.FullName();
            end;
        }
        field(2; "Employee Name"; text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Department; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Job Title"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Email; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Employee No")
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