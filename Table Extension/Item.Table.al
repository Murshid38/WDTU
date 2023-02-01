tableextension 50100 Item extends Item
{
    fields
    {
        field(50100; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
        field(50101; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = CustomerContent;
        }
        field(50102; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(50103; "Data Format"; Option)
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
            OptionMembers = ,Vinyl,Cd,Mp3,Psa,Advertisement;
        }
        field(50104; "MP3 Location"; Text[250])
        {
            Caption = 'MP3 Location';
            DataClassification = CustomerContent;
        }
    }
}
