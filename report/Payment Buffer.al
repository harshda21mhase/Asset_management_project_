table 50125 "Payment Buffer EXT"
{
    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Vendor No."; Code[20]) { }
        field(3; "Vendor Name"; Text[100]) { }
        field(4; "Invoice No."; Code[35]) { }
        field(5; Amount; Decimal) { }
        field(6; "Posting Date"; Date) { }
        field(7; "Document No."; Code[20]) { }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}