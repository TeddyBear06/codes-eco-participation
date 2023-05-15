GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=ameublement

HTTP 200
[Asserts]
jsonpath "$.*.id" != null
jsonpath "$.*.libelle" != null
jsonpath "$.*.annee" != null
jsonpath "$.*.dateDebut" != null
jsonpath "$.*.dateFin" != null
jsonpath "$.*.libelleBareme" != null
jsonpath "$.*.code" != null
jsonpath "$.*.filiereBareme" != null
jsonpath "$.*.typeModalite" != null
jsonpath "$.*.unite" != null
jsonpath "$.*.tonnage" != null
jsonpath "$.*.limiteHaute" != null
jsonpath "$.*.limiteBasse" != null
jsonpath "$.*.limiteCac" != null
jsonpath "$.*.nombreUnitesLotsRS" != null
jsonpath "$.*.limiteLotRS" != null
[Captures]
# On capture l'ID de la dernière campagne
id_campagne: jsonpath "$.[0].id"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne={{id_campagne}}

HTTP 200
[Asserts]
jsonpath "$.*.id" != null
jsonpath "$.*.libelle" != null
jsonpath "$.*.code" != null
jsonpath "$.*.ordre" != null
jsonpath "$.*.dateCreation" != null
jsonpath "$.*.dateModification" != null
jsonpath "$.*.produitCategorieId" != null
[Captures]
# On capture l'ID du dernier code campagne
code_categorie: jsonpath "$.[0].code"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-multiples?idCampagne={{id_campagne}}&codeCategorie={{code_categorie}}