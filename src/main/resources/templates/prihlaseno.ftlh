[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<main>
    <h1>Registrace na letní dětský tábor</h1>

    <div>Přihláška s číslem <strong>${kod}</strong> byla vytvořena.
        [#if email??]
            Na e-mail ${email} byla zaslána kopie přihlášky.
        [/#if]

        <form class="zadano" action="/" method="post">
            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Jméno účastníka:</div>
                ${jmeno}</div>

            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Příjmení účastníka:</div>
                ${prijmeni}
            </div>

            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Datum narození:</div>
                ${datumNarozeni}
            </div>

            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Pohlaví:</div>
                ${pohlavi}
            </div>


            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Turnus:</div>
                ${turnus}
            </div>

            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">E-mail rodiče:</div>
                ${email}
            </div>

            <div class="row mb-3">
                <div class="col-form-label col-sm-2 pt-0">Telefon rodiče:</div>
                ${telefon}


            </div>
        </form>

    </div>
</main>
</body>
</html>
