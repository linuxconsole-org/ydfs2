FROM debian:bookworm
MAINTAINER Yann Le Doaré <yann@linuxconsole.org>

# Locale
RUN apt-get update && apt-get install -y locales 
# RUN localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8 
RUN echo "fr_FR.UTF-8 UTF-8"> /etc/locale.gen
RUN echo "br_FR.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "de_DE.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "en_US.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "es_ES.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "fr_CA.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "fr_FR.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "pt_BR.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "ru_RU.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "zh_CN.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "cs_CZ.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "pl_PL.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "ar_TN.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "ja_JP.UTF-8 UTF-8">> /etc/locale.gen
RUN locale-gen
ENV LANG fr_FR.utf8

# Timezone
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y apt-utils
RUN apt-get update && apt-get install -y gcc-mingw-w64 grub-pc
RUN apt-get update && apt-get install -y make sudo wget unzip 
RUN dpkg --add-architecture i386 && sudo apt update
RUN apt-get update && apt-get install -y wine32
RUN apt-get update && apt-get install -y wine
RUN apt-get update && apt-get install -y sbsigntool grub-efi-amd64-bin
RUN apt-get update && apt-get install -y gettext x11-apps
RUN apt-get update && apt-get install -y build-essential libreadline-dev libbz2-dev libsqlite3-dev libssl-dev zlib1g-dev
RUN apt-get update && apt-get install -y wget
RUN wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar xzf Python-2.7.18.tgz && cd Python-2.7.18 && ./configure --prefix=/usr/python2 && make && make install
RUN apt-get update && apt-get install -y p7zip-full
#RUN useradd debian
RUN useradd --password='$y$j9T$OaSg3czvtEIUIp3A.dYqz.$mJJ8lrN0T4pAr/BylRCk4JrKYkBW0cVRHKHcuyTi9t8' debian
RUN install -d /home/debian
RUN chown debian /home/debian
RUN usermod -aG sudo debian
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN apt-get update && apt-get install -y whois
RUN mkdir -p /work
WORKDIR /work
ENV DISPLAY=:0

CMD make && tail -f /dev/null
