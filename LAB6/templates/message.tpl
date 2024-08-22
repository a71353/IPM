  <html>
  <head>

   {if $message_type == 1 }
       <title>Registration Complete</title>
       <meta http-equiv="refresh" content="2; url=index.php" />
   {/if}
   {if $message_type == 2 }
       <title>Goodbye page</title>       
       <meta http-equiv="refresh" content="3; url=index.php" />
   {/if}
  </head>
  <body>
 
   {$message}
 
  </body>
  </html>