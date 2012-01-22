#!/usr/bin/env php
<?php
function get_title($html_page)
{
  // split the page into 3 sections, with the <title> and </title> tags as delimiters.
  $split_page = preg_split("%</?title[^>]*>%",$html_page);
  return $split_page[1];
}
function get_bit_coin_price()
{
  $bitcoin_price_address = "http://www.bitcoinexchangerate.org/price";
  $html = fread(fopen($bitcoin_price_address, "r"), 100);
  return get_title($html);
}
$price = trim(get_bit_coin_price());
echo $price;
?>
