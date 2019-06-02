<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  // page_require_level(2);
  page_require_level(3);
?>
<?php
  $user = current_user();

  $product = find_by_id('products',(int)$_GET['id']);
  $p_name = $product['name'];

  if(!$product){
    $session->msg("d","ID vacío");
    redirect('product.php');
  }
?>
<?php     

  $delete_id = delete_by_id('products',(int)$product['id']);
  
  if($delete_id){
      $session->msg("s","Producto eliminado");
      
      $user_name  = remove_junk(ucfirst($user['name']));       
      $date    = make_date();
      $query2  = "INSERT INTO tracing (";
      $query2 .=" user,operation,operation_name,product_name,date";
      $query2 .=") VALUES (";
      $query2 .=" '{$user_name}','elimino','producto','{$p_name}','{$date}'";
      $query2 .=")";
      $query2 .=" ON DUPLICATE KEY UPDATE user='{$user_name}'";      
      $db->query($query2);

      redirect('product.php');
  } else {
      $session->msg("d","Eliminación falló");
      redirect('product.php');
  }
?>
