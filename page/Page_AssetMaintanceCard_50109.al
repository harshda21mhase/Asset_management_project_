page 50109 "Asset Maintance Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Assest Maintance Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Entry No"; Rec."Entry No")
                {

                }
                field("Assest ID"; Rec."Assest ID")
                {

                }
                field("Asset Description"; Rec."Asset Description")
                {

                }
                field("Request Date"; Rec."Request Date")
                {

                }
                field("Maintenance Date"; Rec."Maintenance Date")
                {

                }
                field("Vendor Name"; Rec."Vendor Name")
                {

                }
                field(Description; Rec.Description)
                {

                }
                field("Completion Date"; Rec."Completion Date")
                {

                }

                field(Status; Rec.Status)
                {
                    Visible = false;
                }
                field("Status 1"; Rec."Status 1")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CompleteMaintaince)
            {
                Caption = 'Complete Maintaince';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Completed;
                trigger OnAction()
                var
                    RecAssetMaster: Record "Asset Master";
                    RecAssetHistory: Record "Asset History Table";
                begin
                    Message('Asset Maintain Sucessfully..!!');

                    Page.Run(Page::"Asset History List Page", RecAssetHistory);
                end;
            }

        }
    }

    var
        myInt: Integer;
}