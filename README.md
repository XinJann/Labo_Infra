# Niveau 2

### Quels sont les trois différents types de cloud computing disponibles ?

Il existe quatre principaux types de cloud computing : cloud public, cloud privé, cloud hybride et multicloud. Il existe aussi trois principaux types de services de cloud computing : IaaS (Infrastructure-as-a-Service), PaaS (Platform-as-a-Service) et SaaS (Software-as-a-Service).

### Créez deux machines virtuelles nommez-les respectivement landing-vm1 et landing-vm2.
Utilisez une image Rocky Linux pour l'installation.
Donnez-leur des cartes réseau NAT, et ⏹️ associez-leur les adresses IP 172.16.64.2 et 172.16.64.3.
Sur la machine landing-vm1, ajoutez un disque supplémentaire de 10 Go pour que la machine en ait deux.

- La conf des IPs des 2 VM (on voit le hostname aussi)
![IP_VMs](/Screens/IP_VMs.png)

- les 2 interfaces présentes sur les 2 VMs
![interfaces](/Screens/interfaces.png)

- disque supplémentaire de 10 Go sur landing-vm1 (sdb)

![disque](/Screens/disque.png)


### Sur la machine landing-vm1, montez deux partitions supplémentaires sur le deuxième disque. Pour la taille, faites moitié-moitié de chaque partition.

![partitions](/Screens/partitions.png)


### Affichez toutes les partitions présentes sur tous les disques

![list_partitions](/Screens/ls_all_partitions.png)


# Packet Tracer

### Placez deux routeurs R1 R2 et deux PC PC1 et PC2. Reliez un PC à un routeur chacun, puis reliez les deux routeurs entre eux.

![](/Screens/infra_base.png)

### Quelle est la commande à utiliser pour faire en sorte que mon PC dans le réseau en 10.0 pinge mon autre PC dans le réseau 20.0 ?

Pour le router R1 :
```
ip route 20.0.1.0 255.255.255.0 30.0.1.2
```
 -> ça veut dire "si tu veux aller dans le réseau 20.0.1.0/24, va parler à 30.0.1.2"

Pour le router R2 :
```
ip route 10.0.1.0 255.255.255.0 30.0.1.1
```
 -> ça veut dire "si tu veux aller dans le réseau 10.0.1.0/24, va parler à 30.0.1.1"

#### Screen du ping entre PC1 et PC2

![](/Screens/screen_ping.png)


#### Placez un PC3 relié uniquement au routeur R3 avec l'adresse IP 60.0.1.1

![](/Screens/Infra_advanced.png)

#### PC3 peut ping PC1 et PC2

![](/Screens/eigrp_screen.png)