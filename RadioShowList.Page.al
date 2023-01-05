page 50100 "Radio Show List"
{
    ApplicationArea = All;
    Caption = 'Radio Show List';
    PageType = List;
    SourceTable = "Radio Show";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Radio Show Type"; Rec."Radio Show Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Radio Show Type field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Run Time"; Rec."Run Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Run Time field.';
                }
                field("Host Code"; Rec."Host Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Host Code field.';
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Host Name field.';
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Average Listeners field.';
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Audience Share field.';
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Advertising Revenue field.';
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Royalty Cost field.';
                }
            }
        }
    }
}
