page 50104 "Employee List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EmployeeTab;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Employee No"; Rec."Employee No")
                {

                }
                field("Employee Name"; Rec."Employee Name")
                {

                }
                field(Department; Rec.Department)
                {

                }
                field("Job Title"; Rec."Job Title")
                {

                }
                field(Email; Rec.Email)
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