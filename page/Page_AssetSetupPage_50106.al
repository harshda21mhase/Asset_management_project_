page 50106 "Asset Setup Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Asset Setup Table";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Primary key"; Rec."Primary key")
                {

                }
                field("Asset No"; Rec."Asset No")
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