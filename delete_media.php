<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(3);
?>
<?php
  $user = current_user();
  $find_media = find_by_id('media',(int)$_GET['id']);
  $p_name = $find_media['file_name'];

  $photo = new Media();
  if($photo->media_destroy($find_media['id'],$find_media['file_name'])){
      $session->msg("s","Se ha eliminado la foto.");

      $user_name  = remove_junk(ucfirst($user['name']));       
      $date    = make_date();
      $query2  = "INSERT INTO tracing (";
      $query2 .=" user,operation,operation_name,product_name,date";
      $query2 .=") VALUES (";
      $query2 .=" '{$user_name}','elimino','imagen','{$p_name}','{$date}'";
      $query2 .=")";
      $query2 .=" ON DUPLICATE KEY UPDATE user='{$user_name}'";      
      $db->query($query2);

      redirect('media.php');
  } else {
      $session->msg("d","Se ha producido un error en la eliminación de fotografías.");
      redirect('media.php');
  }
?>
