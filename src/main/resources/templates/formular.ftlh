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
</head>
<body>
    <main>

        <form class="prihlaska" action="/" method="post">
            <h1>Registrace na letní dětský tábor</h1>

            <label for="jmeno" class="radek">Jméno účastníka:</label>
            [@spring.formInput path="form.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="prijmeni" class="radek">Příjmení účastníka:</label>
            [@spring.formInput path="form.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="datumNarozeni" class="radek">Datum narození:</label>
            [@spring.formInput path="form.datumNarozeni" fieldType="string" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek">Pohlaví:</div>
            <div class="skupina">
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



            <label for="turnus" class="radek">Turnus:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "1": "1.7.2023 až 14.7.2023",
            "2": "14.7.2023 až 28.7.2023",
            "3": "1.8.2023 až 14.8.2023",
            "4": "14.8.2023 až 28.8.2023"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>



            <label for="email" class="radek">E-mail rodiče:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="telefon" class="radek">Telefon rodiče:</label>
            [@spring.formInput path="form.telefon" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>


            <div class="radek">
                [@spring.formCheckbox path="form.podminky" /]
                <label for="podminky">Souhlasím s podmínkami účasti</label>
            </div>
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek">
                [@spring.formCheckbox path="form.rad" /]
                <label for="rad">Souhlasím s provozním řádem zařízení</label>
            </div>
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="radek controls">
                <button type="submit">Přihlásit</button>
            </div>
        </form>
    </main>
</body>
</html>
