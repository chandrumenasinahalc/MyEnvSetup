FROM ubuntu:20.04
RUN apt-get update && apt-get -y install neovim python3-dev wget unzip
RUN apt-get -y install curl git
ENV \
      UID="1000" \
      GID="1000" \
      UNAME="neovim" \
      GNAME="neovim" \
      SHELL="/bin/bash" \
      WORKSPACE="/mnt/workspace"  \
      NVIM_CONFIG="/home/neovim/.config/nvim" \
      NVIM_PLUG_CONFIG="/home/neovim/.local/share/nvim"
RUN addgroup "${GNAME}"  && adduser  --ingroup "${GNAME}" --shell "${SHELL}" "${UNAME}" --disabled-password 
USER neovim
RUN  mkdir -p ${NVIM_PLUG_CONFIG}/plugged   \
      && mkdir -p ${NVIM_PLUG_CONFIG}/site   \
      && chown -R neovim:neovim /home/neovim/.local  
COPY nvim /home/neovim/nvim
RUN  ln -sf /home/neovim/nvim /home/neovim/.config/nvim 
WORKDIR ${WORKSPACE}
VOLUME ${WORKSPACE}
COPY nvim.sh /
ENTRYPOINT ["nvim"]
