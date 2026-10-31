FROM yledoare/ydfs-2.12
MAINTAINER Yann Le Doaré <yann@linuxconsole.org>
USER root

# Locale
# RUN apt-get update && apt-get install -y locales 
# RUN localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8 
# RUN echo "fr_FR.UTF-8 UTF-8"> /etc/locale.gen
# RUN echo "br_FR.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "de_DE.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "en_US.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "es_ES.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "fr_CA.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "fr_FR.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "pt_BR.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "ru_RU.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "zh_CN.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "cs_CZ.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "pl_PL.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "ar_TN.UTF-8 UTF-8">> /etc/locale.gen
# RUN echo "ja_JP.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "eu_ES.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "ro_RO.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "uk_UA.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "uk_UA.UTF-8 UTF-8">> /etc/locale.gen
RUN echo "el_GR.UTF-8 UTF-8">> /etc/locale.gen
RUN locale-gen
ENV LANG en_US.utf8
#ENV LANG fr_FR.utf8

# Timezone
#ENV TZ=Europe/Paris
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER linuxconsole2026
CMD /build-lc2026
