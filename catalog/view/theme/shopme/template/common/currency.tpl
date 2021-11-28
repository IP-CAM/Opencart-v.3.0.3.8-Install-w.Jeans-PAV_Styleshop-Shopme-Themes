<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency"> 
<span class="currency-sym">
	 <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['symbol_left']; ?></strong>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['symbol_right']; ?></strong>
    <?php } ?>
    <?php } ?>
	</span>
<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><?php echo $text_currency; ?> <span class="fa fa-angle-down"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li>
	  <a class="currency-select"  name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?></a>
	 </li>
      <?php } else { ?>
      <li>
	    <a class="currency-select"  name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?> - <?php echo $currency['title']; ?></a>
	</li>
      <?php } ?>
      <?php } ?>
                            </ul>
							
<?php } ?>	
 <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />	
</form>					
					
