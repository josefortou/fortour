# funcion para el indice de nacionalizacion del sistema de partidos
calc_psni <- function(datos, party, party_votes, party_prop_votes){
  datos %>%
    group_by(party) %>%
    summarize(pni = calc_pni(prop_votos),
              votes = sum(party_votes)) %>%
    mutate(prop_national = votes/sum(votes),
           pni_weighted = pni * prop_national) %>%
    ungroup() %>%
    pull(pni_weighted) %>%
    sum()
}

camara_dept %>%
  group_by(party) %>%
  summarize(pni = calc_pni(prop_votes_party),
            votes = sum(votes_party)) %>%
  mutate(prop_national = votes/sum(votes),
         pni_weighted = pni * prop_national) %>%
  ungroup() %>%
  pull(pni_weighted) %>%
  sum()

# aplicar funcion
camara_dept %>%
  calc_psni(party, votes_party, prop_votes_party)
