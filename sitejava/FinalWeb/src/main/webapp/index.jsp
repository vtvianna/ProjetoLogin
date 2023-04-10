<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav>
    <div class="logo">VT</div>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>
    <ul>
      <li><a class="active" href="#">Home</a></li>
      <li><a href="#">sobre</a></li>
      <li><a href="#">Servicos</a></li>
      <li><a href="#">Galeria</a></li>
      
    </ul>
  </nav>
  


  <div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form action="LoginServlet" method="post">
        <input type="text" placeholder="Digite o seu E-mail" id="email" name="email" required>
        <input type="password" placeholder="Digite a sua senha" id="senha" name="senha" required>
        
       <input type="submit" class="button" value="Entrar">
      </form>
      <div class="signup">
        <span class="signup" >Você não tem conta?
         <label for="check"><a href="cadastro.jsp">Inscrever-se</a></label>
        </span>
      </div>
    </div>
    </div>
    
</body>
</html>