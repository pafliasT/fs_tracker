namespace invoicing;



entity InvoiceItems {
  key ID : UUID;
  //invoice : Association to Invoices;
  description : String;
  quantity : Integer;
  unitPrice : Double;
  lineTotal : Double; // Calculated as quantity * unitPrice
}
@assert.unique : {
   invoiceNumber: [ invoiceNumber ]
}
entity Invoices {
  key ID : UUID;
  invoiceNumber : String;
  dateIssued : Date;
  dateDue : Date;
  status : String; // e.g., 'Pending', 'Paid', 'Cancelled'
  totalAmount : Double;
  customer : Association to Customers;
  //lineItems : Composition of many InvoiceItems on lineItems.invoice = $self;
}



entity Customers {
  key ID : UUID;
  name : String;
  address : String;
  phonenumber : String; 
  email : String;
  invoices : Association to many Invoices on invoices.customer = $self;
}