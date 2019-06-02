<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(3);
?>
<?php
  $user = current_user();

  $d_sale = find_by_id('sales',(int)$_GET['id']);
  $product = find_by_id('products',(int)$d_sale['product_id']);
  $p_name = $product['name'];

  if(!$d_sale){
    $session->msg("d","ID vacío.");
    redirect('sales.php');
  }
?>
<?php
  $delete_id = delete_by_id('sales',(int)$d_sale['id']);
  if($delete_id){
      $session->msg("s","Venta eliminada.");

      $user_name  = remove_junk(ucfirst($user['name']));       
      $date    = make_date();
      $query2  = "INSERT INTO tracing (";
      $query2 .=" user,operation,operation_name,product_name,date";
      $query2 .=") VALUES (";
      $query2 .=" '{$user_name}','elimino','venta','{$p_name}','{$date}'";
      $query2 .=")";
      $query2 .=" ON DUPLICATE KEY UPDATE user='{$user_name}'";      
      $db->query($query2);

      redirect('sales.php');
  } else {
      $session->msg("d","Eliminación falló");
      redirect('sales.php');
  }
?>
