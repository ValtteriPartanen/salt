# Palvelinten hallinta lopputyö

Alkuperäinen idea oli tehdä automatisoitua DNS rekisteröintiä ja hallintaa, mutta olikin turhan suuri pala purtavaksi.
Sitten koitin conffata asterisk palvelinta, joka jostain syystä ei toimi, vaikka conffauksen pitäisi olla oikein tehty.
Joten loppujen lopuksi päädyin tekemään tylsän, mutta ehkä hyödyllisen moduulin, joka asentaa muun muassa;

nginx
ssh
sysstat

Ja tekee reijät palomuurille SSH:lle ja nginx:lle.
