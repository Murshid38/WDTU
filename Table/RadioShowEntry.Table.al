table 50105 "Radio Show Entry"
{
    Caption = 'Radio Show Entry';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = CustomerContent;
        }
        field(20; "Type"; Option)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
            optionmembers = ,Resource,Show,Item;
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(40; "Data Format"; Option)
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
            optionmembers = ,Vinyl,Cd,Mp3,Psa,Advertisement;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(60; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(70; "Time"; Time)
        {
            Caption = 'Time';
            DataClassification = CustomerContent;
        }
        field(80; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(90; "Fee Amount"; Decimal)
        {
            Caption = 'Fee Amount';
            DataClassification = CustomerContent;
        }
        field(100; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = CustomerContent;
        }
        field(120; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        //We know that a lot of reporting will be done based on the data in Radio Show Ledger. 
        // We also know that we want to do reporting on data by Radio Show and 
        // by the type of entry (individual song, specific advertisement, and so on). So, 
        // we will add secondary keys for each of those, including a Date field 
        // so that we can rapidly filter the data by Date. 
        // The reporting that is financial in nature will need totals of the Fee Amount field, 
        // so we'll put that in the SumIndexFields column for our new keys:
        key(Reporting; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Reporting2; Type, "No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
    }
}
