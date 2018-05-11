# Palvelinten hallinta lopputyö

Alkuperäinen idea oli tehdä automatisoitua DNS rekisteröintiä ja hallintaa, mutta olikin turhan suuri pala purtavaksi.
Sitten yritin konfiguroida asterisk palvelinta, joka jostain syystä ei toimi, vaikka konfiguroinnin pitäisi olla oikein tehty.
Joten loppujen lopuksi päädyin tekemään jonkinlaisen moduulin, joka asentaa hyödyllisiä ohjelmia ja tekee joitan conffauksia.

Tämä moduuli asentaa muunmuassa nginx:n, ssh:n, sysstatin ja konfiguroi sen, tekee palomuurille tarvittavat reijät
Ja asentaa läjäpäin hyödyllisiä ohjelmia kuten ack-grep, nmap, git, vim, vlc ja kuvanmuokkaus ohjelman gimpin.
