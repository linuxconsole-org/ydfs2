FROM debian:bookworm
MAINTAINER Yann Le Doaré <yann@linuxconsole.org>

RUN apt-get update && apt-get install -y locales 
RUN echo "fr_FR.UTF-8 UTF-8"> /etc/locale.gen
RUN echo "en_US.UTF-8 UTF-8">> /etc/locale.gen
RUN locale-gen
ENV LANG fr_FR.utf8

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y apt-utils gcc-mingw-w64 grub-pc make sudo wget unzip 
RUN dpkg --add-architecture i386 && apt update 
RUN apt-get update && apt-get install -y wine32 wine sbsigntool grub-efi-amd64-bin gettext x11-apps p7zip-full whois grub-efi-ia32-bin
#build-essential libreadline-dev libbz2-dev libsqlite3-dev libssl-dev zlib1g-dev wget
#RUN wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar xzf Python-2.7.18.tgz && cd Python-2.7.18 && ./configure --prefix=/usr/python2 && make && make install
RUN useradd -ms /bin/bash  --password='$y$j9T$OaSg3czvtEIUIp3A.dYqz.$mJJ8lrN0T4pAr/BylRCk4JrKYkBW0cVRHKHcuyTi9t8' -G root,sudo debian #&& usermod -aG sudo debian
# New added for disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN install -d /home/debian
RUN chown debian /home/debian
RUN usermod -aG sudo debian
ENV DISPLAY=:0

CMD make && tail -f /dev/null
