[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <main>
        <h1>Registrace na letní dětský tábor</h1>
        <h1>Přihláška</h1>
        <div>Přihláška s číslem <strong>${kod}</strong> byla vytvořena.
            [#if email??]
                Na e-mail ${email} byla zaslána kopie přihlášky.
            [/#if]
        </div>
    </main>
</body>
</html>
