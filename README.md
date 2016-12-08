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
Ohjelma on hyvin perustason sivut, joilla voi kommentoida erilaisia pelejä ja lukea kommentteja.

![Kirjautuminen](https://github.com/H9574/IIO13200-HTYO-H9574/blob/master/Images/Kirjaudu.png)

Kirjautuessa ja rekisteröityessä regular expression tarkistaa ensin syötteen ennen kuin lähettää sen tietokantaan. Salasana on md5 salattu.

![Pelit ja kommentit](https://github.com/H9574/IIO13200-HTYO-H9574/blob/master/Images/Pelit.png)

Käyttäjä näkee kaikki pelit ja kommentit.

![Kommentoiminen](https://github.com/H9574/IIO13200-HTYO-H9574/blob/master/Images/Kommentit.png)

Pelaaja voi kommentoida ja muokata sekä poistaa omia kommenttejaan.

![Ulos kirjautuminen](https://github.com/H9574/IIO13200-HTYO-H9574/blob/master/Images/Ulos.png)

Käyttäjä kirjautuu ulos, minkä jälkeen jää jumiin kirjautumissivulle...


###4. Ohjelman tarvitsemat tiedostot ja tietokannat
MySQL - labranet

###5. Toteuttamatta jääneet ominaisuudet, bugit ja jatkokehitys

Toteuttamatta jääneet ominaisuudet
* kommenteista ja peleistä tykkäys/ei tykkäys
* salasanan vaihtaminen (tämä ominaisuus oikeastaan unohdettiin täydellisesti)

Bugeja
* jos kirjautuu sisään ja sulkee selaimen, selain muistaa sisään kirjautumisen, mutta unohtaa käyttäjän ID numeron, mikä rikkoo kommentoimisen ja kommenttien haun käyttäjälle.
* kirjautuessa ulos käyttäjä jää jumiin kirjautumissivulle eikä pääse sieltä pois

Jatkokehitys
* koodin siistiminen pätkistä, jotka eivät toimineet
* virheen käsittely kaikkiin kohtiin yhden tai kahden kohdan sijaan
* reqular expression myös kommentin syötteen tarkistukseen
* tykkäämiset
* käyttettävyys, ei tarkista MySQL:stä käytössä jo olevia käyttäjänimiä rekisteröityessä, salasanaa ei voi vaihtaa, pelien ja kommentien hakeminen tietyillä ehdoilla
* bugien korjaus
* visuaalisuutta, kuvia peleistä

###6. Oppimisen analysointi

###Sanna
Olen oppinut Asp.net ohjelmoinnin perusteet, tietokannan käyttöä, md5 salausta sekä regular expression lauseiden laatimisen kertaamista. Ajatus oli käyttää Linq komentoja mieluummin kuin merkkijono komentoja, mutta sen jälkeen kun MySQL tietokanta oli jo valmis ja osittäin käytössä, huomasin ettei Linq tule toimeen MySQL:n kanssa. Koska meillä oli jo kaikki tarvittava tieto MySQL:ssä emmekä keksineet muuta, mihin tarvitsisimme tietokannan ja mikä olisi järkevää.

Haasteellisiitta oli oletusasetukset, joiden olemassa ei aluksi huomannut tai inhimilliset virheet, joista visual studio ei sanonut mitään, ja monien tuntien ihmettely että miksi tämä nyt näin tekee vaikka koodin pitäisi olla oikein. Työ jämähti useaan otteeseen tällaiseen pieneen virheeseen, jonka löytäminen ja korjaaminen oli hyvin hermoja raastavaa.

###Valtteri
opin muutamia niksejä SQL:n hakuun ja siihen databindatun taulun käsittelyyn (ja ennen kaikkea taulujen yhdistämiseen asp.net-koodissa), masterpageen ohjelmoitavia toimintoja, RSS feedin käsittelyä, sekä erilaisia ratkaisuja käytännöllisiin ongelmiin muotoilua mietittäessä (DropDownListiin voipi olla huono idea laittaa omassa tapauksessamme AutoPostBack=true tai clearselection(), kun siitä tuli paljon päänvaivaa.. plus, tuplautuvat kommentit ongelman sai helposti ratkaistua lisäämällä DISTINCT taulujen yhdistyskäskyn alkupäähän)

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
|8.12.|1h|Dokumentaatio ja esitys||
|yhteensä|38,8h|||

Valtteri

* RSS feedin hakeminen toiselta sivulta
* Tiedon välitys kahden sivun välillä
* Tiedon hakeminen tietokannasta

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
|8.12.|1h|Dokumentaatio ja esitys||
|yhteensä|30,3h|||
