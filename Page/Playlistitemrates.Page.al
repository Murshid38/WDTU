page 50105 "Playlist item rates"
{
    ApplicationArea = All;
    Caption = 'Playlist item rates';
    PageType = List;
    SourceTable = "Playlist Item Rate";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Source Type"; Rec."Source Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the document no. field.';
                }
                field("Source No."; Rec."Source No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the line no. field.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the type field.';
                }
                field("Start time"; Rec."Start time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the start time field.';
                }
                field("End time"; Rec."End time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the end time field.';
                }
                field("Rate Amount"; Rec."Rate Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the data format field.';
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the publisher field.';
                }
            }
        }
    }
}
