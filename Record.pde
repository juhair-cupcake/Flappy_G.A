class Record{
  Table tb;
  TableRow row;
  
  Record(){
    Table tb =loadTable("data.csv","header");
    TableRow row = tb.getRow(0);
  }

}
