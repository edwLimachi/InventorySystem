<?php
  $page_title = 'Seguimiento de usuarios';
  require_once('includes/load.php');
?>
<?php
// Checkin What level user has permission to view this page
 // page_require_level(1);
page_require_level(2);
//pull out all user form database
 $table='tracing';
 $all_tracing = find_all($table);
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Seguimiento de los usuarios</span>
       </strong>
         <!-- <a href="add_user.php" class="btn btn-info pull-right">Agregar usuario</a> -->
      </div>
     <div class="panel-body">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th class="text-center">#</th>
            <th >Usuario</th>
            <th >Operacion</th>
            <th class="text-center" >Nombre de Operacion</th>
            <th class="text-center" >Nombre de Producto</th>
            <th >Fecha</th>
            <!-- <th class="text-center" style="width: 100px;">Acciones</th> -->
          </tr>
        </thead>
        <tbody>
        <?php foreach($all_tracing as $a_tracing): ?>
          <tr>
           <td class="text-center"><?php echo count_id();?></td>
           <td><?php echo remove_junk(ucwords($a_tracing['user']))?></td>
           <td><?php echo remove_junk(ucwords($a_tracing['operation']))?></td>
           <td class="text-center"><?php echo remove_junk(ucwords($a_tracing['operation_name']))?></td>           
           <td><?php echo remove_junk(ucwords($a_tracing['product_name']))?></td>
           <td><?php echo read_date($a_tracing['date'])?></td>           
          </tr>
        <?php endforeach;?>
       </tbody>
     </table>
     </div>
    </div>
  </div>
</div>
  <?php include_once('layouts/footer.php'); ?>
