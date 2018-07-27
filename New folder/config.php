<?php
require_once('vendor/autoload.php');

$stripe = array(
  "secret_key"      => "sk_test_ioKtzMVcf0aOz0jUbI9uLdZp",
  "publishable_key" => "pk_test_4Alq5p8SboKfJLfzfRobghF7"
);

\Stripe\Stripe::setApiKey($stripe['secret_key']);
?>