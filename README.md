#Opintojakso IIO13200 

##Harjoitustyö

Tekijät: Valtteri Mäntylä-Blå, Räisänen Sanna

###1. Asennus
Asennus onnistuu kopioimalla repon Visual Studioon. Käynnistäessä ohjelman ensimmääistä kertaa, se hakee ja asentaa tarvitsemansa nugetit. Tietokantana toimii labraverkon MySQL ja sitä varten tarvitsee salasanan.
###2. Tietoa ohjelmasta

Wiki:
https://github.com/H9574/IIO13200-HTYO-H9574/wiki

Käyttäjä voi kirjautua sisään kommentoidakseen ja lukeakseen peleistä mielipiteitä. Hän voi lukea muiden kommentteja sekä kirjoittaa että muokata omiaan. Hän voi tykätä kommenteista tai inhota niitä. Hän voi myös lukea muille sivuille kirjoitettuja kommentteja.

###3. Kuvankaappaukset tärkeimmistä käyttöliittymistä + käyttöohje
Ohjelma on hyvin perustason 
###4. Ohjelman tarvitsemat tiedostot ja tietokannat
###5. Bugit ja jatkokehitys
Bugeja
*jos kirjautuu sisään ja sulkee selaimen, selain muistaa sisään kirjautumisen, mutta unohtaa käyttäjän ID numeron, mikä rikkoo kommentoimisen ja kommenttien haun käyttäjälle.
*kirjautuessa ulos käyttäjä jää jumiin kirjautumissivulle eikä pääse sieltä pois
Jatkokehitys
*tykkäämiset
*pelien ja kommentien hakeminen tietyillä ehdoilla
*bugien korjaus
*visuaalisuutta, kuvia peleistä
###6. Oppimisen analysointi

Sanna
Olen oppinut... Haasteellista oli...

Valtteri
Olen oppinut... Haasteellista oli...

###7. Töiden jako ja kulunut aika

Sanna

* Sisään kirjautuminen mysql ja uusien tunnusten luominen, salaaminen md5
* Tallennetaan tietoa yhteiseen tietokantaan ja käyttäjä voi muokata itse tallentamiaan tietoja

Sannan Aikataulut

|pvm|tunnit|tehty|ongelmia|
|---|---|---|---|
|13.10.|3h|Repon luominen ja speksi|Saada repo toimimaan oikein ja näyttämään sivut|
|27.10.|3h|Speksi ja palautus|pysyä aikataulussa|
|3.11.|1h|Sivujen pohja ja css|css ei toimi|
|4.11.|1,3h|css toimimaan ja rss sivu alkuun|css vähän pistää vastaan|
|10.11.|3h|css ulkonäköä, xml tietokanta, alustava yhteys valmiiseen tietokantaan testaukseksi|xml tietokanta ei tule toimimaan|
|12.11.|2h|MySQL tietokannan suunnittelua ja koodien tekemistä sille sekä piirtämistä|opettajan esimerkki ei ole järkevä, salasana tietokannassa?|
|17.11.|3h|MySQL uusiksi ja pystyyn, tiedon tarkistus ennen tietokantaa|kuinka yhdistellä tietoja tehokkaasti eri tauluista|
|24.11.|1,5h|masterin heittely kaikille sivuille|sisään ja uloskirjautumis napit aina näkyvissä|
|25.11.|2h|yhteydenottoa tietokantaan, kommenttien haku|sql kyselyt ei toimi c# koodista|
|26.11.|3h|Koodista yhteydenotot tietokantaan rekisteröimiseksi ja kirjautumiseksi|Koodin testausmahdollisuutta ei ole|
|2.12.|5h|Sisään kirjautuminen korjattu|Kommentteja ei näy|
|6.12.|4h|Kommentit näkyviin ja uusien kommenttien luominen|Mitään ei voinut testata koska kone|
|7.12.|6h|Viime hetken korjausta|likes painikkeita ei ehditty tehdä|
|yhteensä|37,8h|||

Valtteri

* Tallennetaan tietoa käyttäjän omaan tietokantaan
* RSS feedin hakeminen toiselta sivulta
* Tiedon välitys kahden sivun välillä

Valtterin aikataulut

|pvm|tunnit|tehty|ongelmia|
|---|---|---|---|
|13.10.|2h|Aiheen keksiminen ja speksi|Keksiä hyvä aihe|
|27.10.|2h|Speksi ja palautus|pysyä aikataulussa|
|2.11.|2h|mockup|fluidui.|
|3.11.|1h|Sivujen pohja ja css|css ei toimi|
|4.11.|1,3h|css toimimaan ja rss sivu alkuun|css vähän pistää vastaan|
|10.11.|3h|tietokannan miettimistä ja opettajan esimerkkien selaamista|xml tietokanta ei tule toimimaan|
|17.11.|3h|master sivut pystyyn, alustava kuva nettisivuille||
|24.11.|3h|vähän kaiken yleistä raapustelua||
|25.11.|2h|rss-sivujen muotoilua|hankaluuksia tietokannasta haussa|
|2.11.|4h|sivujen päähahmon tuunaus ja xml tekemistä|xml ei toimi aivan niin kuin pitäisi|
|7.12.|6h|Viime hetken korjausta|likes painikkeita ei ehditty tehdä|
|yhteensä|29,3h|||

![Alt text](/images/kuva.png "kuva")

