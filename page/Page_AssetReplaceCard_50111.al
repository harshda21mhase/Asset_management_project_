page 50111 "Asset Replace Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Asset Replace Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Maintaince no"; Rec."Maintaince no")
                {

                }

                field("Assets Id"; Rec."Assets Id")
                {

                }
                field("Assets Description"; Rec."Assets Description")
                {

                }
                field("Issue Description"; Rec."Issue Description")
                {

                }
                field("New Asset ID"; Rec."New Asset ID")
                {

                }
                field("New asset Description"; Rec."New asset Description")
                {

                }
                field("Employee No"; Rec."Employee No")
                {

                }
                field("Employee Name"; Rec."Employee Name")
                {

                }
                field("Vendor Name"; Rec."Vendor Name")
                {

                }
                field("Repair Cost"; Rec."Repair Cost")
                {

                }
                field(Status; Rec.Status)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(processReplacemnt)
            {
                Caption = 'Process Replacement';
                ApplicationArea = All;
                Image = Replan;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    Asset: Record "Asset Master";
                begin
                    if Rec.Processed then
                        Error('Replacement already processed.');


                    if not Asset.Get(Rec."Assets Id") then
                        Error('Old Asset not found.');


                    if Asset."Asset ID" = Rec."New Asset ID" then
                        Error('Old and New Asset cannot be the same.');

                    Message('Assets Replaced Suceesfully..!!');
                end;


            }
            action(AssetMaintain)
            {
                Caption = 'Asset Maintance Page';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = All;
                Image = MaintenanceLedger;

                trigger OnAction()
                var
                    RecAssetMAintain: Record "Assest Maintance Table";

                begin
                    Page.Run(Page::"Assest Maintance List Page", RecAssetMAintain);
                end;
            }
        }
    }

    var
        myInt: Integer;
}