//Put your custom functions and variables in this file

function PlaceOrder() {

    SeS('Phones').DoClick();
    SeS('Laptops').DoClick();
    SeS('Monitors').DoClick();
    SeS('Laptops').DoClick();
    while( "Sony_vaio_i5"==false)
    {
        SeS('Next').DoClick();
    }
    SeS('Sony_vaio_i5').DoClick();
    SeS('Add_to_cart').DoClick();
    Navigator.DoCheckAlert("Product added");
    SeS('PRODUCT_STORE').DoClick();
    SeS('Laptops').DoClick();
    while( "Dell_i7_8gb"==false)
    {
        SeS('Next').DoClick();
    }
    SeS('Dell_i7_8gb').DoClick();
    SeS('Add_to_cart').DoClick();
    Navigator.DoCheckAlert("Product added");
    SeS('Cart').DoClick();
    SeS('Delete').DoClick();
    TotalPrice;
    TotalPrice = SeS('Price').GetInnerText();
    SeS('OrderIDsAndAmounts').DoAddRow();
    SeS('OrderIDsAndAmounts').SetCell(TotalPrice, "Amount");
    SeS('OrderIDsAndAmounts').DoSave();
    SeS('Place_Order').DoClick();
    SeS('Name').DoSetText("Ma Test");
    SeS('Country').DoSetText("Spain");
    SeS('City').DoSetText("Tarifa");
    SeS('Credit_card').DoSetText("7645333789009076");
    SeS('Month').DoClick();
    SeS('Month').DoSetText("04");
    SeS('Year').DoClick();
    SeS('Year').DoSetText("2024");
    SeS('Purchase').DoClick();
    OrderId;
    OrderId = SeS('Order_Id').GetInnerText();
    OrderPrice;
    OrderPrice = SeS('Order_price').GetInnerText();
    SeS('OrderIDsAndAmounts').SetCell(OrderId, "Id");
    SeS('OrderIDsAndAmounts').SetCell(OrderPrice, "Amount");
    SeS('OrderIDsAndAmounts').DoSave();
    Tester.Assert("Order price equals total price (cart)", SeS('Order_price').GetInnerText().indexOf( "" )>=0 );
    SeS('OK').DoClick();


}