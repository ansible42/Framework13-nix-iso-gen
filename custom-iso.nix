{ pkgs, modulesPath, ... }: {
    imports = [
        <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>
        
        # Provide an initial copy of the NixOS channel so that the user
        # doesn't need to run "nix-channel --update" first.
        <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
    ];

    environment.systemPackages = with pkgs; [
     firefox
     alacritty
     git
     file
     nushell
     rustup
     dotnetCorePackages.dotnet_9.sdk
  ];
}