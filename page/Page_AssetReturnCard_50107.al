page 50107 "Asset Return Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Asset Return Table";

    layout
    {
        area(Content)
        {
            group(Genral)
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
                field("Employee Name"; Rec."Employee Name")
                { }
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
                Caption = 'Return Assets Here';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = Return;

                trigger OnAction()
                var
                    RecReturnAsset: Record "Asset Return Table";
                    Historymgt: Codeunit "History Management";
                begin
                    Rec.TestField("Return Date");
                    Rec.TestField(Condition);

                    RecReturnAsset.Reset();
                    RecReturnAsset.SetRange("Assest ID", Rec."Assest ID");

                    if RecReturnAsset.FindFirst() then begin
                        RecReturnAsset.Status := RecReturnAsset.Status::Available;
                        RecReturnAsset.Modify(true);
                    end;



                    Message('Asset returned successfully.');
                end;
            }
            action(ReplaceAsset)
            {
                Caption = 'Replace Asset Here';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    RecReplace: Record "Asset Replace Table";
                begin
                    Page.Run(Page::"Asset Replace List Page", RecReplace);
                end;
            }


        }
    }

    var
        myInt: Integer;
}