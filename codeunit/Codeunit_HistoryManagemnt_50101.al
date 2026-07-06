codeunit 50121 "History Management"
{

    procedure InsertHistory(

        AssetId: code[40];
        EmployeeNo: Code[40];
        EmployeeName: Text[100];
        Activity: Enum "Asset Activity";
        Description: Text[250];
        ReferenceNo: Code[20];
AssetDescription: text[100];
PerformedBy: text[100])
    var
        RecAssetHistory: Record "Asset History Table";

    begin
        RecAssetHistory."Asset Id" := AssetId;
        RecAssetHistory."Asset Description" := Description;
        RecAssetHistory."Employee No" := EmployeeNo;
        RecAssetHistory."Employee Name" := EmployeeName;
        RecAssetHistory."Activity Type" := Activity;
        RecAssetHistory."Activity Date" := Today;
        RecAssetHistory.Description := Description;
        RecAssetHistory."Reference No." := ReferenceNo;
        RecAssetHistory."Performed By" := PerformedBy;

        RecAssetHistory.Insert();

    end;

    var
        myInt: Integer;
}