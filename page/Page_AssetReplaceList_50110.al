page 50110 "Asset Replace List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Replace Table";
    CardPageId = "Asset Replace Card Page";

    layout
    {
        area(Content)
        {
            repeater(General)
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
                field("Vendor Name"; Rec."Vendor Name")
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
                field(Processed; Rec.Processed)
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