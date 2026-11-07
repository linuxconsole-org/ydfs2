FROM nixos/nix
RUN nix-channel --update
#RUN nix-build '<nixpkgs>' --attr firefox
RUN nix-build '<nixpkgs>' --attr nmap -o ydfs-nmap

