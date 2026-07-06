page 50108 "Asset Return List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Return Table";
    CardPageId = "Asset Return Card Page";

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
                field("Employee No"; Rec."Employee No")
                {

                }
                field("Return Date"; Rec."Return Date")
                {

                }
                field(Condition; Rec.Condition)
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