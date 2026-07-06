report 50101 "Employee Asset Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Employee Asset Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'Src/Reports/Layout/EmployeeAssetReport.rdl';

    dataset
    {
        dataitem(AssetAssignment; "Asset Assignment")
        {
            RequestFilterFields = "Employee No", "Assest ID";

            column(EmployeeNo; "Employee No")
            {
            }

            column(EmployeeName; "Employee Name")
            {
            }

            column(AssignedDate; "Assigned Date")
            {
            }

            column(ReturnDate; "Return Date")
            {
            }

            column(AssetID; "Assest ID")
            {
            }
            column(CompName; CompInfo.Name)
            {

            }
            column(CompAddress; CompInfo.Address)
            {

            }
            column(CompPostCode; CompInfo."Post Code")
            {

            }
            column(CompPhoneNo; CompInfo."Phone No.")
            {

            }

            dataitem(AssetMaster; "Asset Master")
            {
                DataItemLink = "Asset ID" = field("Assest ID");

                column(AssetDescription; Description)
                {
                }

                column(AssetType; "Asset Type")
                {
                }

                column(Status; Status)
                {
                }



                column(PurchaseDate; "Purhcase Date")
                {
                }

                column(WarrantyExpiry; "Warrenty Expiray date")
                {
                }
            }

        }


    }


    requestpage
    {
        layout
        {
            area(Content)
            {
            }
        }
    }
    trigger OnPreReport()
    begin
        CompInfo.Get();
        CompInfo.CalcFields(Picture);
    end;

    Var
        CompInfo: Record "Company Information";
}
