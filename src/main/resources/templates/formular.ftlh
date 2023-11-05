[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <main>

        <form class="prihlaska" action="/" method="post">
            <h1>Registrace na letní dětský tábor</h1>
            <div class="row mb-3">
            <label for="jmeno" class="form-label">Jméno účastníka:</label>
            [@spring.formInput path="form.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <label for="prijmeni" class="form-label">Příjmení účastníka:</label>
            [@spring.formInput path="form.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="datumNarozeni" class="form-label">Datum narození (dd.mm.rrrr):</label>
            [@spring.formInput path="form.datumNarozeni" fieldType="date" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="col-form-label col-sm-2 pt-0">Pohlaví:</div>
            <div class="col-sm-10">
                <div>
                    <input id="pohlavi1" type="radio" name="pohlavi" value="DIVKA"/>
                    <label for="pohlavi1">Dívka</label>
                </div>
                <div>
                    <input id="pohlavi2" type="radio" name="pohlavi" value="CHLAPEC"/>
                    <label for="pohlavi2">Chlapec</label>
                </div>
            </div>
            [@spring.bind "form.pohlavi"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>



            <label for="turnus" class="form-label">Turnus:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "1": "1.7.2023 až 14.7.2023",
            "2": "14.7.2023 až 28.7.2023",
            "3": "1.8.2023 až 14.8.2023",
            "4": "14.8.2023 až 28.8.2023"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>



            <label for="email" class="form-label">E-mail rodiče:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="telefon" class="form-label">Telefon rodiče:</label>
            [@spring.formInput path="form.telefon" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


                <div class="form-check">
                [@spring.formCheckbox path="form.podminky" /]
                <label for="podminky">Souhlasím s podmínkami účasti</label>
            </div>
            <div class="error">[@spring.showErrors "<br>"/]</div>

                <div class="form-check">
                [@spring.formCheckbox path="form.rad" /]
                <label for="rad">Souhlasím s provozním řádem zařízení</label>
            </div>
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek controls">
                <button type="submit" class="btn btn-primary" data-bs-toggle="button" >Přihlásit</button>
            </div>
            </div>
        </form>
    </main>
</body>
</html>
