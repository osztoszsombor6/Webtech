RMarkdown-Example make clean all leírás
=======================================
Szerző: Osztós Zsombor

Bevezetés
---------
Jelen dokumentum a **Webtechnológiák** kurzus **1.házifeladat megoldását** tartalmazza. A feladat az volt, hogy a <https://github.com/jeszy75/markdown-examples/tree/master/rmarkdown> repository-ban található szoftver esetében a ```make clean all``` utasítás hiba nélküli lefuttásához szükséges lépéseket összegyüjtsük és dokumentáljuk. 

A szükséges _komponensek_ telepítését a **Miniconda** segítségével kellett elvégezni, melynek telepítését adottnak vehettük.

RMarkdown-example
-----------------
A példaprogram egy olyan _rmarkdown_ állomány, mely három fő részből áll, 3 fajta használatot mutat be. 

1. Ez első egy _bash szkript_, mely a _httpie_ modul segítségével egy http oldal tartalmát tölti le és írja ki a kimentere (ezzel a generálandó html fájlba).
2. A második rész egy _R_ programrész, amely a _Diamonds dataset_ adatait táblázat és diagram formájában mutatja meg.
3. A harmadik egy _Python_ program, amely a _seaborn iris dataset_-jének adatait ábrázolja.

Mindhárom esetben megjelennek a végrehajtott utasítások is.


Telepítendő modulok
-------------------
A jelzett forrás a _github_-ról le kell töltetünk. Amennyiben ezt klónozással akarjuk elérni, akkor a [git](https://git-scm.com/) programot telepítenünk kell. Ezt a következő utasítással tehetjük meg:
```
conda install git
```
A klónozás ezt követően már lehetséges:
```
git clone  https://github.com/jeszy75/markdown-examples
```
A fordításhoz szükséges a [make](https://www.gnu.org/software/make/) parancs is. 
```
conda install make
```

Ahhoz, hogy a _rmarkdown_ állományt _html_ állománnyá alakíthassuk, szükséges telepítenünk néhány modult. Ezek a következők:

* [httpie](https://httpie.org/)
```
conda config --add channels conda-forge
conda config --set channel_priority strict 
conda install httpie
```
* [r](https://www.r-project.org/)
```
conda install r
```
* [r-ggplot2](https://www.rdocumentation.org/packages/ggplot2/versions/3.3.2)
```
conda install r-ggplot2
```
* [r-rmarkdown](https://rmarkdown.rstudio.com/)
```
conda install r-rmarkdown
```
* [r-reticulate](https://rstudio.github.io/reticulate/)
```
conda install r-reticulate
```
* [seaborn](https://pypi.org/project/seaborn/)
```
conda install seaborn
```


Make
----
Ha a telepítések rendben megtörténnek, akkor a klónozott könyvtárba belépve (_markdown-examples/rmarkdown_) kiadhatjuk a ```make clean all``` utasítást

Eredmény
--------
A _make clean all_ utasítás hatására - amennyiben rendben, hiba nélkül végrehajtódik - létrejön a kívánt _html_ állomány, melyet megnyithatunk. 


 source: <https://github.com/osztoszsombor6/Webtech>