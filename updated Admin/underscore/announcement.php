<?php
  include('database.php')
 ?>

 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <title>Announcement</title>
     <link rel="stylesheet" href="bootstrap-3.3.7-dist\css\bootstrap.min.css">
   </head>
   <body>
     <?php include('navbar.php'); ?>

     <div class="container">
       <form action="broadcast.php" method="POST" enctype="multipart/form-data">
         <fieldset class="form-group">
           <label>Privacy: </label>
           <div class="radio-inline">
             <label>
               <input type="radio" name="privacy" value="public" checked>
               Public
             </label>
           </div>
           <div class="radio-inline">
             <label>
               <input type="radio" name="privacy" value="private">
               Private
             </label>
           </div>
         </fieldset>

         <fieldset class="form-group">
           <label>Post:</label>
           <textarea class="form-control" rows="3" name="content"></textarea>
         </fieldset>

         <fieldset class="form-group">
           <label>Upload File: </label>
           <input type="file" name="fileupload" class="form-control-file">
           <small class="text-muted">Share files to all users.</small>
         </fieldset>

         <button type="submit" class="btn btn-primary">Submit</button>
       </form>
     </div>

   </body>
 </html>
