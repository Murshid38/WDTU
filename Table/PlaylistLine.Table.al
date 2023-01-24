table 50103 "Playlist Line"
{
    Caption = 'Playlist Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "document no."; Code[20])
        {
            caption = 'document no.';
            dataclassification = customercontent;
        }
        field(2; "line No."; Integer)
        {
            caption = 'line no.';
            dataclassification = customercontent;
        }
        field(10; "Type"; Option)
        {
            caption = 'type';
            dataclassification = customercontent;
            optionmembers = ,resource,show,item;
        }
        field(20; "No."; Code[20])
        {
            caption = 'no.';
            dataclassification = customercontent;
        }
        field(30; "Data Format"; Option)
        {
            caption = 'data format';
            dataclassification = customercontent;
            optionmembers = ,vinyl,cd,mp3,psa,advertisement;
        }
        field(40; Publisher; Code[10])
        {
            caption = 'publisher';
            dataclassification = customercontent;
        }
        field(50; Description; Text[50])
        {
            caption = 'description';
            dataclassification = customercontent;
        }
        field(60; "Duration"; Duration)
        {
            caption = 'duration';
            dataclassification = customercontent;
        }
        field(70; "Start Time"; Time)
        {
            caption = 'start time';
            dataclassification = customercontent;
        }
        field(80; "End Time"; Time)
        {
            caption = 'end time';
            dataclassification = customercontent;
        }
    }
}
