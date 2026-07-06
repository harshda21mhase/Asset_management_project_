page 50115 "API Master Page"
{
    PageType = API;
    Caption = 'API Master Page';
    APIPublisher = 'Bc280';
    APIGroup = 'assetmanagement';
    APIVersion = 'v1.0';
    EntityName = 'asset';
    EntitySetName = 'assets';
    SourceTable = "Asset Master";
    DelayedInsert = true;
    //ODataKeyFields = "Asset ID";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(assetId; Rec."Asset ID")
                {
                }

                field(assetType; Rec."Asset Type")
                {
                }

                field(assetName; Rec."Assest Types")
                {
                }

                field(itemNo; Rec."Item No.")
                {
                }

                field(description; Rec.Description)
                {
                }

                field(serialNo; Rec."Serial No")
                {
                }

                field(purchaseDate; Rec."Purhcase Date")
                {
                }

                field(cost; Rec.Cost)
                {
                }

                field(warrantyExpiryDate; Rec."Warrenty Expiray date")
                {
                }

                field(status; Rec.Status)
                {
                }

                field(employeeNo; Rec."Employee No")
                {
                }

                field(employeeName; Rec."Employee Name")
                {
                }
            }
        }
    }
}