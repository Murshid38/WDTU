page 50106 "Radio show entries"
{
    ApplicationArea = All;
    Caption = 'Radio show entries';
    PageType = List;
    SourceTable = "Radio Show Entry";
    UsageCategory = History;
    
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
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Radio Show No. field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Data Format"; Rec."Data Format")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Data Format field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field("Time"; Rec."Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time field.';
                }
                field("Fee Amount"; Rec."Fee Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fee Amount field.';
                }
                field("ACSAP ID"; Rec."ACSAP ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ACSAP ID field.';
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Publisher Code field.';
                }
            }
        }
    }
}
