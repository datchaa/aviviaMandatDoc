statistic = list(all_continuous() ~ c("{mean}", "{sd}", "{min}", "{p25}", "{median}", "{p75}", "{max}")),
digits = all_continuous() ~ 2
)
# Version complète
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))|> tbl_summary(
statistic = list(all_continuous() ~ c("{mean}", "{sd}", "{min}", "{p25}", "{median}", "{p75}", "{max}")),
digits = all_continuous() ~ 2
)
# Version complète
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))|> tbl_summary(
statistic = list(all_continuous() ~ c("{mean}", "{sd}", "{min}", "{p25}", "{median}", "{p75}", "{max}"))
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = list(all_continuous() ~ c("Moyenne = {mean}",
"Écart-type = {sd}",
"Minimum = {min}",
"1er quartile = {p25}",
"Médiane = {median}",
"3e quartile = {p75}",
"Maximum = {max}")),
digits = all_continuous() ~ 2
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = list(all_continuous() ~ c("Moyenne = {mean}",
"Écart-type = {sd}",
"Minimum = {min}",
"1er quartile = {p25}",
"Médiane = {median}",
"3e quartile = {p75}",
"Maximum = {max}")),
digits = all_continuous()
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary()
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = ~ "{p}% ({n}/{N})",
percent = "row"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = list(all_continuous() ~ "{median} ({p25}, {p75})", all_categorical() ~
"{n} ({p}%)")
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = list(all_continuous() ~ "{mean} ({sd})")
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}")
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}")
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
include = everything(),
type = all_continuous() ~ "continuous2",
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
by= trt,
include = everything(),
type = all_continuous() ~ "continuous2",
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
by = trt,
include = everything(),
type = all_continuous() ~ "continuous2",
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
by = trt,
include = everything(),
type = all_continuous() ~ "continuous2",
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
# Version complète
library(gtsummary)
library(dplyr)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
tbl_summary(
include = everything(),
type = all_continuous() ~ "continuous2",
statistic = all_continuous() ~ c("{median} ({p25}, {p75})", "{min}, {max}"),
missing = "no"
)
install.packages("knitr")
install.packages("kableExtra")
# Version complète
library(knitr)
library(kableExtra)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
summary() |>
as.data.frame() |>
kbl(caption = "Résumé statistique des variables numériques") |>
kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F)
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))  |> summary() as.data.frame() |>
kbl(caption = "Résumé statistique des variables numériques") |>
kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F)
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))  |> summary() |> as.data.frame() |>
kbl(caption = "Résumé statistique des variables numériques") |>
kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F)
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))  |> summary() |> as.data.frame() |>
kbl(caption = "Résumé statistique des variables numériques") |>
kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F)
# Version complète
library(dplyr)
library(knitr)
library(kableExtra)
commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric)) |>
summary() |>
as.data.frame() |>
kbl(caption = "Résumé statistique des variables numériques") |>
kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = FALSE)
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric))  |> summary()
commandes |> filter(estPsd == FALSE) |> select(where(is.factor))  |> summary()
commandes |> filter(estPsd == FALSE) |> select(where(is.factor)) |> select(-c(projets,code)) |> summary()
commandes |> filter(estPsd == FALSE) |>select(-c(projets,code)) |> select(where(is.factor)) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-projet)
commandes |> filter(estPsd == FALSE) |> select(--(c(projet,code))
commandes |> filter(estPsd == FALSE) |> select(projets,code)
commandes |> filter(estPsd == FALSE) |> select(c(projets,code))
commandes |> filter(estPsd == FALSE) |> select(c(projet,code))
commandes |> filter(estPsd == FALSE) |> select(c(projet,code))
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code))
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> where(is.factor) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> where(is.factor) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> where(is.factor()) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> where(is.factor()) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor())) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
t <- commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
t <- commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> summary()
library(tidyverse)
library(echarts4r)
library(gtsummary)
theme_gtsummary_language("fr", decimal.mark = ',')
load("../data/transformed/commandes.RData")
load("../data/transformed/contrats.RData")
load("../data/transformed/etapes.RData")
load("../data/transformed/kits.RData")
load("../data/transformed/projets.RData")
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> summary() |> as.data.frame()
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> summary()
library(dplyr)
# Supposons que `commandes` est ton data.frame
# Filtrage et sélection des colonnes numériques
numerics_df <- commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric))
# Résumé statistique
summary_list <- summary(numerics_df)
# Conversion en data.frame
summary_df <- as.data.frame.matrix(summary_list)
# Transposer pour avoir les variables en lignes
summary_df <- as.data.frame(t(summary_df))
# Ajouter les noms de lignes comme colonne de variables (optionnel)
summary_df <- tibble::rownames_to_column(summary_df, var = "Variable")
# Affichage
print(summary_df)
library(dplyr)
library(tibble)
# Étape 1 : Sélectionner les colonnes numériques après filtrage
numerics_df <- commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric))
# Étape 2 : Résumé statistique avec summary()
summary_obj <- summary(numerics_df)
# Étape 3 : Convertir le summary en data.frame
summary_df <- as.data.frame.matrix(summary_obj)
# Étape 4 : Transposer pour avoir les variables en lignes
summary_df <- as.data.frame(t(summary_df))
# Étape 5 : Transformer les rownames en colonne "Variable"
summary_df <- rownames_to_column(summary_df, var = "Variable")
# Afficher le résultat
print(summary_df)
summary_df
library(dplyr)
library(tibble)
# Étape 1 : Sélectionner les colonnes numériques après filtrage
numerics_df <- commandes |>
filter(estPsd == FALSE) |>
select(where(is.numeric))
# Étape 2 : Résumé statistique avec summary()
summary_obj <- summary(numerics_df)
# Étape 3 : Convertir le summary en data.frame
summary_df <- as.data.frame(summary_obj)
# Étape 4 : Transposer pour avoir les variables en lignes
summary_df <- as.data.frame(t(summary_df))
# Étape 5 : Transformer les rownames en colonne "Variable"
summary_df <- rownames_to_column(summary_df, var = "Variable")
# Afficher le résultat
print(summary_df)
install.packages("psych")
library(psych)
describe(commandes)  # Statistiques de base
# Par groupe
commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> describe()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> describe()
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> summary()
colnames_fr <- c("Variable", "n", "Moyenne", "Ecart_type", "Mediane",
"Moyenne_tronq", "Ecart_median", "Minimum", "Maximum",
"Etendue", "Asymetrie", "Aplatissement", "Erreur_standard")
rNumerique <-  commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> describe()
colnames(rNumerique)
rNumerique
colnames_fr <- c("Variable", "n", "Moyenne", "Ecart_type", "Mediane",
"Moyenne_tronq", "Ecart_median", "Minimum", "Maximum",
"Etendue", "Asymetrie", "Aplatissement", "Erreur_standard")
rNumerique <-  commandes |> filter(estPsd == FALSE) |> select(where(is.numeric)) |> describe()
colnames(rNumerique) <- colnames_fr
rNumerique
commandes |> filter(estPsd == FALSE) |> select(-c(projet,code)) |> select(where(is.factor)) |> tbl_summary()
library(tidyverse)
library(echarts4r)
library(gtsummary)
library(psych)
theme_gtsummary_language("fr", decimal.mark = ',')
load("../data/transformed/commandes.RData")
load("../data/transformed/contrats.RData")
load("../data/transformed/etapes.RData")
load("../data/transformed/kits.RData")
load("../data/transformed/projets.RData")
commandes |> colnames()
contrasts |> colnames()
contrats |> colnames()
library(tidyverse)
library(echarts4r)
library(gtsummary)
library(psych)
theme_gtsummary_language("fr", decimal.mark = ',')
load("../data/transformed/commandes.RData")
load("../data/transformed/contrats.RData")
load("../data/transformed/etapes.RData")
load("../data/transformed/kits.RData")
load("../data/transformed/projets.RData")
contrats |> colnames()
library(tidyverse)
library(echarts4r)
library(gtsummary)
library(psych)
theme_gtsummary_language("fr", decimal.mark = ',')
load("../data/transformed/commandes.RData")
load("../data/transformed/contrats.RData")
load("../data/transformed/etapes.RData")
load("../data/transformed/kits.RData")
load("../data/transformed/projets.RData")
library(tidyverse)
library(echarts4r)
library(gtsummary)
library(psych)
theme_gtsummary_language("fr", decimal.mark = ',')
load("../data/transformed/commandes.RData")
load("../data/transformed/contrats.RData")
load("../data/transformed/etapes.RData")
load("../data/transformed/kits.RData")
load("../data/transformed/projets.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/contrats.RData")
contrast
contrats
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/contrats.RData")
contrats
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/contrats.RData")
library(tidyverse)
# Chargement des données
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/contrats.RData")
# Extraction de la table
contrats <- contrats$Contrat
# Aperçu des variables
glimpse(contrats)
# Fonctions de nettoyage personnalisées
# Supprime les caractères spéciaux dans les noms de colonnes
dropColunmSpecialChr <- function(tbl){
rename_with(tbl, ~ gsub("[^A-Za-z0-9]", "", .))
}
# Met les noms de colonnes en minuscules
castColunmToLower <- function(tbl){
rename_with(tbl, ~ tolower(.))
}
# Supprime les colonnes entièrement vides
cleanEmpytColumn <- function(tbl){
select(tbl, where(~ !all(is.na(.))))
}
# Supprime les doublons
cleanDuplicateRows <- function(tbl){
distinct(tbl)
}
# Nettoie les caractères spéciaux dans les valeurs textuelles
cleanSpecialChar <- function(x){
if (is.character(x) || is.factor(x)) {
x <- as.character(x) |>
str_replace_all("[^[:alnum:] ,._-]", "") |>
str_squish() |>
na_if("")
}
return(x)
}
# Application des fonctions de nettoyage
contrats <- contrats |>
dropColunmSpecialChr() |>
castColunmToLower() |>
cleanEmpytColumn() |>
cleanDuplicateRows() |>
mutate(across(everything(), cleanSpecialChar))
# Extraction des pourcentages des acomptes et nettoyage des champs
# Nettoyage spécifique et transformations
contrats <- contrats |> mutate(
prisemesure = gsub("priseDeMesure", "", prisemesure),
aveclivraison = gsub("true|false", "", aveclivraison),
aveclivraison = ifelse(aveclivraison == "1", "true", "false"),
assemblage = ifelse(assemblage == "Assemble", "true", "false"),
nbjourvalide = gsub("true", "", nbjourvalide)
) |>
mutate(across(
.cols = starts_with(c("date", "pourc", "nbjour")),
.fns = ~ str_remove_all(., "[A-Za-z]")
))
# Sélection des variables utiles et conversion des types
vars_utiles <- c(
"nomclient", "projet", "typeclient", "roleproprietaire", "validcred",
"code", "sorte", "datevalidite", "datedebvalidite", "datecreation",
"datereqexped", "dateprevexped",
"emplacementcre", "nbjourvalide", "qteitems", "qteitemscab", "ligne",
"aveclivraison", "avertlivraison", "codepost", "codepostfinal",
"installation", "prisemesure", "assemblage", "edgecolle", "gamme",
"cleitem", "lumieres", "type", "typeprocess", "division",
"codetaxe", "codetaxe2","totalescompte", "pourcesc", "soustotal",
"tauxtaxe", "tauxtaxe2", "totaltx1", "totaltx2", "totalesc", "totalht",
"total"
)
contrats <- contrats |>
select(all_of(vars_utiles)) |>
relocate(all_of(vars_utiles))
# Conversion des types
contrats <- contrats |>
mutate(across(
c(datevalidite, datedebvalidite, datecreation, datereqexped,
dateprevexped),
~ ymd(., quiet = TRUE)
)) |>
mutate(across(
c(pourcesc, soustotal, tauxtaxe, tauxtaxe2,
total, totalht, totaltx1, totaltx2),
~ as.integer(gsub("[^0-9.-]", "", .))
)) |>
mutate(across(
c(qteitems, qteitemscab, nbjourvalide, cleitem),
~ as.integer(.)
)) |>
mutate(across(
c(aveclivraison, installation, prisemesure, assemblage, validcred),
~ as.logical(case_when(
. %in% c("1", "true", "vrai", "o") ~ TRUE,
. %in% c("0", "false", "faux", "n") ~ FALSE,
TRUE ~ NA
))
)) |>
mutate(across(
c(nomclient, projet, typeclient, roleproprietaire, codepost,
codepostfinal, edgecolle, gamme, lumieres, type, typeprocess,
avertlivraison, emplacementcre, division, codetaxe, codetaxe2,
ligne, code),
as.factor
))
# Structure finale de la table
str(contrats)
library(naniar)
varQuantitatives <- contrats |> select(where(is.numeric))
varQuantitatives |> vis_miss()
library(VIM)
# Remplacement des NA par moyenne des 5 plus proches voisins
varQuantitatives <- kNN(varQuantitatives, k = 5, imp_var = FALSE)
varQuantitatives <- varQuantitatives[, names(varQuantitatives)]
vis_miss(varQuantitatives)
questionr::look_for(varQuantitatives)
varQualitatives <- contrats |> select(where(is.factor))
varQualitatives |> vis_miss()
varQualitatives <- varQualitatives |>
mutate(across(
everything(),
~ fct_na_value_to_level(as.factor(.), level = "non_renseigne")
))
varQualitatives |> vis_miss()
varsLogical <- contrats |> select(where(is.logical))
varsLogical |> vis_miss()
varsLogical <- varsLogical |>
mutate(across(
everything(),
~ {
mode_value <- names(sort(table(.), decreasing = TRUE))[1]
replace(., is.na(.), mode_value)
}
))
vis_miss(varsLogical)
dates <- contrats |> select(where(lubridate::is.Date))
dates |> vis_miss()
dates <- dates |>
select(where(~ mean(is.na(.x)) <= 0.4))
vis_miss(dates)
# Réintégration des jeux de données nettoyés
contrats <- contrats |>
mutate(across(all_of(names(varQuantitatives)), ~ varQuantitatives[[cur_column()]])) |>
mutate(across(all_of(names(varQualitatives)), ~ varQualitatives[[cur_column()]])) |>
mutate(across(all_of(names(varsLogical)), ~ varsLogical[[cur_column()]])) |>
mutate(across(all_of(names(dates)), ~ dates[[cur_column()]]))
# Suppression finale des variables avec trop de NA
contrats <- contrats |>
select(where(~ mean(is.na(.x)) <= 0.4))
# Sauvegarde au format RData
save(contrats, file = "../data/transformed/contrats.RData")
# Vérification finale
glimpse(contrats)
vis_miss(contrats)
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/contrats.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/contrats.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/commandes.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/etapes.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/kits.RData")
load("C:/Users/datch/Desktop/aviviaMandatDoc/data/transformed/projets.RData")
savehistory(file = "histpry.R")
