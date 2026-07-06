report 50102 "Cheque Book"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Src/Reports/Layout/ChequeBook.rdl';

    dataset
    {
        dataitem(GenJournalLine; "Gen. Journal Line")
        {
            DataItemTableView = WHERE("Account Type" = CONST(Vendor));
            RequestFilterFields = "Journal Template Name", "Journal Batch Name";

            column(Description; Description)
            {

            }
            column(PostingDate; "Posting Date")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Account_No_; "Account No.")
            {

            }
            column(Account_Type; "Account Type")
            {

            }
            column(Amount; Amount)
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(Applies_to_Doc__No_; "Applies-to Doc. No.")
            {

            }


            column(CompName; CompInfo.Name)
            {

            }
            column(CompAddress; CompInfo.Address)
            {

            }
            column(CompAddress2; CompInfo."Address 2")
            {

            }
            column(CompCity; CompInfo.City)
            {

            }
            column(CompPostCode; CompInfo."Post Code")
            {

            }
            column(CompPhoneNo; CompInfo."Phone No.")
            {

            }
            column(CompPicture; CompInfo.Picture)
            {

            }


            column(Vendor_Name; Vendor.Name)
            {

            }
            column(Vendor_Address; Vendor.Address)
            {

            }
            column(Vendor_Address2; Vendor."Address 2")
            {

            }
            column(Vendor_City; Vendor.City)
            {

            }
            column(Vendor_PostCode; Vendor."Post Code")
            {

            }
            column(Vendor_Phone; Vendor."Phone No.")
            {

            }

            trigger OnAfterGetRecord()
            begin
                Clear(Vendor);

                if "Account Type" = "Account Type"::Vendor then
                    Vendor.Get("Account No.");
            end;
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

    var
        CompInfo: Record "Company Information";
        Vendor: Record Vendor;
}