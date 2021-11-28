<a href="<?php echo $cart; ?>" class="dropdown-toggle cart"  role="button" aria-expanded="false"><small class="yellow">Cart </small><span class="countbadge"><?php echo $text_items; ?></span> <i class=" icon-handbag"></i></a>

  <ul class="dropdown-menu start-right" role="menu">
    <?php if ($products || $vouchers) { ?>
    <li class="mini-cart-info">
      <table  class="table">
        <?php foreach ($products as $product) { ?>
        <tr class="row">
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
         
          <td class="total"><?php echo $product['total']; ?></td>
         
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
         
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li class="mini-cart-total">
      <div>
        <table class="table table-bordered">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="right"><strong><?php echo $total['title']; ?> :</strong></td>
            <td class="right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <p class="checkout"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="checkout"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>

</div>