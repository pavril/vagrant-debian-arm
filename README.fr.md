# Debian pour développement ARM sur Vagrant

Un Vagrantfile pour mettre en place une machine virtuelle Debian 64-bit (stretch) avec les outils de developpement ARM pour compiler du code ARM.

_Lire ceci dans d'autres langues : [English](README.md)_

## Installation

### Pré-requis

Vérifiez que vous avez installé les dernières versions de [Vagrant](https://www.vagrantup.com/) et de [VirtualBox](https://www.virtualbox.org/).

Pour les machines 32 bits, installez la dernière version de [VirtualBox 5.2](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2) car le support 32 bits a été abandonné depuis la version 6.x.

## Étapes

1. Clonez ou téléchargez ce dépôt dans votre machine locale. Vous pouvez le placer où vous voulez.

2. Obtenez l'archive `opt_gnu_arm_64.tar.bz2` et placez-la dans le même répertoire.

3. Sur la ligne de commande, naviguez dans le répertoire contenant le fichier Vagrantfile et exécutez `variable up`.

La première fois que vous exécutez cette commande, attendez-vous à ce qu'elle prenne un certain temps à se compléter. Ceci peut prendre de 10 à 30 minutes selon la vitesse de votre connexion internet et de votre ordinateur. Elle téléchargera le système d'exploitation Debian et le dotera ensuite des outils de développement ARM.

C'est tout 🎉

## Utilisation

La machine virtuelle est configurée de manière à ce que tous les fichiers du dossier `./code` soient synchronisés entre votre machine locale et la machine virtuelle. Vous pouvez donc utiliser l'éditeur de code de votre choix pour modifier vos fichiers sur votre machine locale, et les compiler et les exécuter sur la machine virtuelle instantanément.

### `vagrant up` - lancer la machine virtuelle 

Ouvrez une ligne de commande dans le répertoire contenant le fichier Vagrantfile et lancez `vagrant up` pour démarrer votre machine virtuelle. Cette commande ne prendra que quelques secondes à exécuter après le provisionnement initial (étape 3).

### `vagrant ssh` - se connecter à la machine virtuelle

Une fois la machine virtuelle démarrée, lancez `vagrant ssh` depuis le répertoire contenant le fichier Vagrantfile pour vous connecter à la machine virtuelle via SSH.

### `vagrant halt` - arrêter la machine virtuelle

Lorsque vous avez fini de travailler sur vos fichiers, vous pouvez éteindre la machine vitale en exécutant `vagrant halt` depuis le répertoire avec le Vagrantfile.

### `vagrant destroy` - supprimer la machine virtuelle

Si vous souhaitez supprimer la machine virtuelle, lancez `vagrant destroy` depuis le répertoire avec le fichier Vagrant. Cela ne supprimera pas vos fichiers sur lesquelles vous travaillez, mais vous devriez attendre que la machine soit provisionnée de nouveau la prochaine fois que vous lancerez `vagrant up`.

