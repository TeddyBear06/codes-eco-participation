# PMCB & ABJ
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=__PMCB__ABJ__

HTTP 200
[Asserts]
# On fige le fait que ce endpoint ne répond rien (au moins pour le moment)
jsonpath "$" count == 0

# Ameublement
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

# Jouet
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=jouet

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

# Brico & jardin
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=brico_jardin

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