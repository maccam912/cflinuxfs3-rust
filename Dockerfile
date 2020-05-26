FROM cloudfoundry/cflinuxfs3

ENV HOME /home/vcap

RUN apt-get update && apt-get install curl -y && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install.sh && bash install.sh -y

ENV PATH $HOME/.cargo/bin:$PATH
