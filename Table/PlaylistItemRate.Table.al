table 50104 "Playlist Item Rate"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source Type"; Option)
        {
            caption = 'document no.';
            dataclassification = customercontent;
            OptionMembers = Vendor,Customer;
        }
        field(2; "Source No."; Code[20])
        {
            caption = 'line no.';
            dataclassification = customercontent;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No." else
            if ("Source Type" = const(Customer)) Customer."No.";
        }
        field(30; "Item No."; Code[20])
        {
            caption = 'type';
            dataclassification = customercontent;
        }
        field(40; "Start time"; Time)
        {
            caption = 'start time';
            dataclassification = customercontent;
        }
        field(50; "End time"; Time)
        {
            caption = 'end time';
            dataclassification = customercontent;
        }
        field(60; "Rate Amount"; Decimal)
        {
            caption = 'data format';
            dataclassification = customercontent;
        }
        field(70; "Publisher Code"; Code[10])
        {
            caption = 'publisher';
            dataclassification = customercontent;
        }
    }

}