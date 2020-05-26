FROM cloudfoundry/cflinuxfs3

RUN apt-get update && apt-get install curl -y && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install.sh && bash install.sh -y

RUN echo 'PATH=$PATH:$HOME/.cargo/bin' >> ~/.bashrc

ENV PATH $HOME/.cargo/bin:$PATH

#CMD /bin/bash
