# Projet labo_infra vagrant + ansible

### Objectifs

- Utiliser Vagrant pour déployer 2 VM dans un même réseau
- Provisionner les VM en utilisant ansible
    - VM_1 : serveur postgresql
    - VM_2 : service pgadmin

## Pré-requis d'installation
- vagrant
- ansible
- libvirt

## Déploiement des VMs

```
vagrant up --provider libvirt
```

## Détruire les VMs

```
vagrant destroy -f
```
