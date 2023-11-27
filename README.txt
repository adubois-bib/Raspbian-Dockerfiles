Linux scripts !

Le "programme" est divisé en deux parties 

- Des fichiers "env*.sh" qui contiennent les variables, le lien de download de l'archive depuis le repo raspberry, qui unzip/unxz l'archive contenant l'image puis qui appelle le programme principal build.sh.

- build .sh monte les 2 partitions contenues dans l'image dans des répertoires dédiés (avec kpartx) puis lance le build de l'image (copie du répertoire ext4, apt update, upgrade et install, install des certificats Bibendum) push, umount les répertoires et supprime les répertoires temporaires et les fichiers img.

Ca se lance simplement comme ça : sudo ./env-bullseye-arm64.sh

Les paramètres disponibles et paramétrables dans les fichiers env*.sh sont les suivants : 

export IMAGE_FILE=2022-09-06-raspios-bullseye-arm64-lite.img
export DISTRIB=bullseye
export ARCH=arm64
export DOCKER_PLATFORM=linux/arm64
export DOCKER_IMAGE_TAG=arm64
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

Ausez-vous bien !

Nono
