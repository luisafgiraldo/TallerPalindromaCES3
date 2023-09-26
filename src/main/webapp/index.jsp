<!DOCTYPE html>
<html>
<head>
    <title>Verificador de Palíndromos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Verificador de Palíndromos</h1>
    <form action="verificar.jsp" method="post">
        <div class="form-group">
            <label for="palabra">Ingrese una palabra:</label>
            <input type="text" class="form-control" id="palabra" name="palabra" required>
        </div>
        <button type="submit" class="btn btn-primary">Verificar</button>
    </form>
</div>
</body>
</html>
