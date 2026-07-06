page 50113 "Asset History List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset History Table";
    CardPageId = "Asset History card Page";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Entry No"; Rec."Entry No")
                {

                }
                field("Asset Id"; Rec."Asset Id")
                {

                }
                field("Asset Description"; Rec."Asset Description")
                {

                }
                field("Employee No"; Rec."Employee No")
                {

                }
                field("Employee Name"; Rec."Employee Name")
                {

                }
                field(Description; Rec.Description)
                {

                }
                field("Performed By"; Rec."Performed By")
                {

                }
                field("Reference No."; Rec."Reference No.")
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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}