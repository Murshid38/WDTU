page 50107 "Listenership entries"
{
    ApplicationArea = All;
    Caption = 'Listenership entries';
    PageType = List;
    SourceTable = "Listerneship Entry";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Ratings Source Entry No."; Rec."Ratings Source Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ratings Source Entry No. field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Time field.';
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Time field.';
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Radio Show No. field.';
                }
                field("Listner Count"; Rec."Listner Count")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Listner Count field.';
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Audience Share field.';
                }
                field("Age Demographic"; Rec."Age Demographic")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age Demographic field.';
                }
            }
        }
    }
}
