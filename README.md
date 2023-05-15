# Extracteur de codes éco-participation

Cet outil non-officiel permet (sans aucune garantie, aucune responsabilité ne pourra être retenue contre le créateur ou les contributeurs, voir la licence) d'extraire les codes éco-participation à partir du site [espace-services.eco-mobilier.fr](espace-services.eco-mobilier.fr).

Il existe un très bon [outil en ligne pour obtenir des codes éco-participation](https://espace-services.eco-mobilier.fr/codifier-mes-produits-et-calculer-leur-eco-participation) mais il ne répond pas à des besoins de développements (format exploitable immédiatement sqlite, csv (possible mais quelques clics requis), sql, etc...).

## Analyse de l'API

Les exemples (et tests de conservation de l'API existante) sont rédigés avec [Hurl](https://github.com/Orange-OpenSource/hurl) et utilisent des expressions [JSONPath](https://goessner.net/articles/JsonPath/).

### 1. Filières

Il existe actuellement 4 filières :

- "Eléments d’ameublement" ([exemple Hurl complet pour cette filière](exemples/ameublement.hurl))
- "Jouets"
- "Articles de bricolage et de jardin"
- "PMCB & ABJ"[^1]

Pour obtenir les campagnes liées à ces filières il existe un endpoint :

https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=${FILIERE}

Où ${FILIERE} peut être :

- ameublement 
- jouet
- brico_jardin
- __PMCB__ABJ__[^2]

Consulter le fichier Hurl pour les [filières](exemples/filieres.hurl).

## 2. Catégorie

Pour obtenir un ensemble de catégories pour une filière, il faut sélectionner une "campagne de mise sur le marché".

https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne=${ID_CAMPAGNE}

Consulter le fichier Hurl pour les [catégories](exemples/categories.hurl).

## CSV

Pour obtenir un [export CSV avec Hurl](exemples/csv.hurl).

[^1]: PMCB : Produits et matériaux de construction du secteur du bâtiment
  ABJ : Articles de bricolage et de jardin
[^2]: Pas encore implémenté sur le site espace-services.eco-mobilier.fr donc pas encore disponible avec cet outil