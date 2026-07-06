page 50102 "Assest Master Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Asset Master";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Asset ID"; Rec."Asset ID")
                {

                }
                field("Asset Type"; Rec."Asset Type")
                {
                    Visible = false;
                }
                field("Item No."; Rec."Item No.")
                {

                }
                field("Assest Types"; Rec."Assest Types")
                {

                }
                field(Description; Rec.Description)
                {

                }
                field("Serial No"; Rec."Serial No")
                {

                }
                field("Purchase Date"; Rec."Purhcase Date")
                {

                }
                field(Cost; Rec.Cost)
                {

                }
                field("Warrenty Expiray date"; Rec."Warrenty Expiray date")
                {

                }
                field(Status; Rec.Status)
                {


                }
                field("Employee No"; Rec."Employee No")
                { }
                field("Employee Name"; Rec."Employee Name")
                {

                }

            }
        }
    }

    actions
    {

        area(Processing)
        {
            action(Registered)
            {
                Caption = 'Registerd assests';
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                image = Register;
                trigger OnAction()
                begin
                    CurrPage.SaveRecord();
                    Message('Assests Registerd Successfully...');
                end;
            }
            action(AssignAsset)
            {
                Caption = 'Assign Assest';
                ApplicationArea = All;
                Image = Employee;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    AssetAssignment: Record "Asset Assignment";
                begin
                    AssetAssignment.Init();
                    AssetAssignment."Assest ID" := Rec."Asset ID";

                    // if Rec.Status <> Rec.Status::Available then
                    //     Error('Only available assets can be assigned.');

                    Page.Run(Page::"Asset Assignment List Page", AssetAssignment);
                end;
            }
            action(ReturnAsset)
            {
                Caption = 'Return Asset';
                Image = Return;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    RecReturnAssest: Record "Asset Return Table";
                begin
                    Page.Run(Page::"Asset Return List Page", RecReturnAssest);
                end;
            }
            action(ReplaceAsset)
            {
                Caption = 'Replace Assests Here';
                Image = Receipt;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    RecReplace: Record "Asset Replace Table";
                begin
                    // if Rec.Status <> Rec.Status::"Damaged" then
                    //     Error('Only damaged assets can be replaced.');

                    Page.Run(Page::"Asset Replace List Page", RecReplace);
                end;

            }

            action(MaintainAssets)
            {
                ApplicationArea = All;
                Caption = 'Maintain Assets';
                Image = MaintenanceLedger;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    RecMain: Record "Assest Maintance Table";
                begin

                    //  if Rec.Status = Rec.Status::Assigned then


                    Page.Run(Page::"Assest Maintance List Page", RecMain);
                end;
            }
            action(Report)
            {
                Caption = 'Asset Management Report';
                Image = Report;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                begin
                    Report.RunModal(Report::"Employee Asset Report");
                end;
            }

        }
    }

    var
        myInt: Integer;
}