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
   {if $message_type == 3 }
       <title>Blog posted</title>       
       <meta http-equiv="refresh" content="3; url=index.php" />
   {/if}
   {if $message_type == 4 }
       <title>Blog Login first</title>       
       <meta http-equiv="refresh" content="3; url=index.php" />
   {/if}
   {if $message_type == 5 }
       <title>Blog Error</title>       
       <meta http-equiv="refresh" content="3; url=index.php" />
   {/if}
    {if $message_type == 6 }
       <title>Blog updated</title>       
       <meta http-equiv="refresh" content="3; url=index.php" />
   {/if}
  </head>
  <body>
 
   {$message}
 
  </body>
  </html>