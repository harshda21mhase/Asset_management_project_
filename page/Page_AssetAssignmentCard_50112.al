page 50112 "Asset Assignment Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Asset Assignment";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("Employee No"; Rec."Employee No")
                {

                }
                field("Employee name"; Rec."Employee name")
                {

                }
                field("Assigned Date"; Rec."Assigned Date")
                {

                }
                field("Return Date"; Rec."Return Date")
                {

                }
                field(Condition; Rec.Condition)
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
            action(ReturnAsset)
            {
                Caption = 'Return Assest';
                ApplicationArea = All;
                Image = Return;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()

                var
                    RecReturnAsset: Record "Asset Return Table";
                begin
                    Page.Run(Page::"Asset Return List page", RecReturnAsset);
                end;
            }

            action("AssignAsset")
            {
                Caption = 'Assign Asset';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    RecAssetMaster: Record "Asset Master";
                    HistoryMgt: Codeunit "History Management";
                begin
                    Rec.TestField("Assest ID");
                    Rec.TestField("Employee No");
                    Rec.TestField("Assigned Date");

                    Rec.Status := Rec.Status::Assigned;
                    Rec.Modify(true);
                    HistoryMgt.InsertHistory(
    Rec."Assest ID",
    Rec."Employee No",
    Rec."Employee name",
    Enum::"Asset Activity"::Assignment,
    'Asset Assigned',
    Format(Rec."Entry No"),
    Rec."Asset Description",
    UserId);


                    Message('Asset %1 has been assigned to Employee %2.',
                            Rec."Assest ID",
                            Rec."Employee No");



                    Message('Asset %1 has been assigned to Employee %2.', Rec."Assest ID", Rec."Employee No");
                end;

            }
        }
    }

    var
        myInt: Integer;

}