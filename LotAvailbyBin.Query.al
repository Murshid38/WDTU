query 50100 "Lot Avail. by Bin"
{
    Caption = 'Lot Avail. by Bin';
    QueryType = Normal;
    QueryCategory = 'Item List';

    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(ItemNo; "Item No.")
            {
            }
            column(LotNo; "Lot No.")
            {
            }
            dataitem(Warehouse_Entry; "Warehouse Entry")
            {
                DataItemLink = "Location Code" = ItemLedgerEntry."Location Code", "Item No." = ItemLedgerEntry."Item No.", "Lot No." = ItemLedgerEntry."Lot No.";
                //Entry No., Location Code, Zone Code, Bin Code, and Quantity

                column(Entry_No_; "Entry No.")
                {

                }
                column(Location_Code; "Location Code")
                {

                }
                column(Zone_Code; "Zone Code")
                {

                }
                column(Bin_Code; "Bin Code")
                {

                }
                column(SumOfQuantity; Quantity)
                {
                    Method = Sum;
                }
                dataitem(Bin; Bin)
                {
                    DataItemLink = Code = Warehouse_Entry."Bin Code";

                    dataitem(Bin_Type; "Bin Type")
                    {
                        DataItemLink = Code = Bin."Bin Type Code";
                        DataItemTableFilter = Pick = const(true);
                    }
                }
            }
        }
    }
}
