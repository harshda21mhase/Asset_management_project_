page 50114 "Asset History card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Asset History Table";

    layout
    {
        area(Content)
        {
            group(General)
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
    }

    actions
    {
        area(Processing)
        {
            action(SaveHistory)
            {
                Caption = 'Save History';
                Image = Save;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    Message('History Saved Succesfully..!!');
                end;
            }
        }
    }

    var
        myInt: Integer;
}