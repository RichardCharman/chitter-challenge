<!DOCTYPE html>
<html>
  <head>
  <title>Chitter</title>
  </head>

  <body>
    <% if current_user %>
    Welcome, <%= current_user.username %>
    <% end %>
    <%= yield %>
  </body>
</html>