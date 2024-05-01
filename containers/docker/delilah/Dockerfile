FROM nixos/nix:2.18.1

RUN bash -c 'mkdir /root/.config && mkdir /root/.config/nix && echo "experimental-features = nix-command flakes" >> /root/.config/nix/nix.conf'

# RUN bash -c "nix profile install home-manager" --priority 6

# RUN bash -c "home-manager switch --flake github:yelircaasi/nix-config#delilah"

CMD "bash"

