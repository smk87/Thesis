require "vendor/autoload.php";
use Payment\Payment;
$pay = new Payment();
$card['card'] = '4242424242424242';
$card['expiremonth'] = '12';
$card['expireyear'] = '2017';
$card['cvv'] = '123';
$check = $pay->setcard($card);
 
if($check === true){
    $amount['amount'] = "100.00";
    $amount['currency'] = "USD";
    echo $pay->makepayment($amount);
}else{
    echo $check;
}