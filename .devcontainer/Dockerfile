FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo

RUN apt-get update && apt-get install -y --no-install-recommends \
   git \
   locales \
   fonts-ipaexfont \
   texlive-base \
   texlive-lang-japanese \
   texlive-latex-recommended \
   texlive-latex-extra \
   texlive-fonts-recommended \
   texlive-extra-utils \
   latexmk \
   && sed -i -e 's/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/' /etc/locale.gen \
   && locale-gen \
   && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/*

RUN kanji-config-updmap-sys ipaex

COPY .latexmkrc /root/.latexmkrc

WORKDIR /workdir

CMD ["bash"]