page 50116 "API Maintance Page"
{
    PageType = API;

    APIPublisher = 'BC280';
    APIGroup = 'AssetMaintance';
    APIVersion = 'v1.0';

    EntityName = 'assetMaintenance';
    EntitySetName = 'assetMaintenances';

    SourceTable = "Assest Maintance Table";

    DelayedInsert = true;
    ODataKeyFields = "Entry No";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(entryNo; Rec."Entry No") { }
                field(assetId; Rec."Assest ID") { }
                field(assetDescription; Rec."Asset Description") { }
                field(employeeName; Rec."Employee Name") { }
                field(requestDate; Rec."Request Date") { }
                field(maintenanceDate; Rec."Maintenance Date") { }
                field(completionDate; Rec."Completion Date") { }
                field(repairCost; Rec."Repair Cost") { }
                field(description; Rec.Description) { }
                field(status1; Rec."Status 1") { }
            }
        }
    }
}