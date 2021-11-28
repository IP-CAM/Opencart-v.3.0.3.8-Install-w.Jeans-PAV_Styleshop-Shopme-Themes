 <?php if (count($languages) > 1) { ?>
 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
  <?php echo $language['name']; ?>
    <?php } ?>
    <?php } ?> <span class="fa fa-angle-down"></span></button>
	
    <ul class="dropdown-menu" role="menu">
       <?php foreach ($languages as $language) { ?>
      <li><a class="language-select" name="<?php echo $language['code']; ?>" ><?php echo $language['name']; ?></a></li>
      <?php } ?>
                            </ul> 
 <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>    
<?php } ?>	