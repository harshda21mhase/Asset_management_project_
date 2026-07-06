page 50103 "Asset Assignment List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Assignment";
    CardPageId = "Asset Assignment Card Page";

    layout
    {
        area(Content)
        {
            repeater(General)
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
        area(Factboxes)
        {

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

                trigger OnAction()

                var
                    RecReturnAsset: Record "Asset Return Table";
                begin
                    Page.Run(Page::"Asset Return List page", RecReturnAsset);
                end;
            }

        }
    }
}