FROM linuxbrew/linuxbrew

USER root

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install biopython

USER linuxbrew

RUN brew tap brewsci/science && \
  brew tap lmc297/homebrew-snpbac && \
  brew install snpbac

ENTRYPOINT [ "snpbac" ]
