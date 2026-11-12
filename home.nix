{ config, pkgs, ... }:

{
  home.username = "jacob";
  home.homeDirectory = "/home/jacob";

  # Note: Leave this as whatever version Home Manager automatically generated for you. 
  # Do not change it even when you update Nix!
  home.stateVersion = "24.05"; 

  # The packages you want installed in your user profile
  home.packages = [
    pkgs.htop
    pkgs.fastfetch
    pkgs.hugo        # Great for static site generation
  ];

  # Modern Git configuration (Warning-free)
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Jacob Turner";
        email = "turnejac01@gmail.com";
      };
      github = {
        user = "jacobdt23";
      };
      init = {
        defaultBranch = "main";
      };
    };
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
