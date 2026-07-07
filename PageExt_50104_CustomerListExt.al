pageextension 50104 CustomerListExt1 extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(DeleteSelectedCustomers)
            {
                Caption = 'Delete Selected Customers';
                ApplicationArea = All;
                Image = Delete;

                trigger OnAction()
                var
                    RecCustomer: Record Customer;
                    CountDel: Integer;
                begin
                    CurrPage.SetSelectionFilter(RecCustomer);

                    if RecCustomer.FindSet() then
                        repeat
                            RecCustomer.Delete(true);
                            CountDel += 1;
                        until RecCustomer.Next() = 0;

                    Message('%1 customers deleted.', CountDel);
                end;
            }
        }
    }
}