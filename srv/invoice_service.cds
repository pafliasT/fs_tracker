using { invoicing } from '../db/schema';

service InvoiceService {
  entity Invoices as projection on invoicing.Invoices;
  entity InvoiceItems as projection on invoicing.InvoiceItems;
  entity Customers as projection on invoicing.Customers;

  action createInvoice (data1 : Invoices) returns Invoices;
  action updateInvoice (ID: UUID, data : Invoices) returns Invoices;
  action deleteInvoice (ID : UUID);

  action createCustomer (data1 : Customers) returns Customers;
  action updateCustomer (ID : UUID, data : Customers) returns Customers;
  action deleteCustomer (ID : UUID); 
  
}
