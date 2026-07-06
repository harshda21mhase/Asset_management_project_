page 50105 "Assest Maintance List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Assest Maintance Table";
    CardPageId = "Asset Maintance Card Page";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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

                field("Repair Cost"; Rec."Repair Cost")
                {

                }
                field(Status; Rec.Status)
                {

                }
                field("Status 1"; Rec."Status 1")
                {
                    ApplicationArea = All;
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
            action(actionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}