table 50100 "Radio Show"
{
    Caption = 'Radio Show';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Message('Hello World 3');
            end;
        }

        field(10; "Radio Show Type"; Code[10])
        {
            Caption = 'Radio Show Type';
            DataClassification = CustomerContent;
            TableRelation = "Radio Show Type";

            // trigger OnLookup()
            // var
            //     myInt: Integer;
            // begin
            //     Message('Hello World');
            // end;
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
            NotBlank = true;
            CharAllowed = 'AM';
        }
        field(40; "Run Time"; Duration)
        {
            Caption = 'Run Time';
            DataClassification = CustomerContent;
        }
        field(50; "Host Code"; Code[20])
        {
            Caption = 'Host Code';
            DataClassification = CustomerContent;
        }
        field(60; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
            DataClassification = CustomerContent;
        }
        field(100; "Average Listeners"; Decimal)
        {
            Caption = 'Average Listeners';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = average("Listerneship Entry"."Listner Count" where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(110; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            DataClassification = CustomerContent;
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
            DataClassification = CustomerContent;
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
            DataClassification = CustomerContent;
        }

        field(1000; Frequency; Option)
        {
            OptionMembers = Hourly,Daily,Weekly,Monthly;
            DataClassification = CustomerContent;
        }

        field(1010; "PSA Planned Quantity"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(1020; "Ads Planned Quantity"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(1030; "News Required"; Boolean)
        {
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1040; "News Duration"; Duration)
        {
            DataClassification = CustomerContent;
        }
        field(1050; "Sports Required"; Boolean)
        {
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1060; "Sports Duration"; Duration)
        {
            DataClassification = CustomerContent;
        }
        field(1070; "Weather Required"; Boolean)
        {
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1080; "Weather Duration"; Duration)
        {
            DataClassification = CustomerContent;
        }
        field(1090; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Radio Show Type", Name) { }
        fieldgroup(Brick; "No.", "Radio Show Type", Name) { }
    }

}