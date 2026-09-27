{
  description = "Tias-dev flake templates";

  outputs = inputs @ {self, ...}: let
    welcomeText = "Hello there";
  in {
    templates = {
      default = {
        description = "Default flake-parts based setup with nixpkgs 26.05 pinned";
        path = ./default;
        inherit welcomeText;
      };
      develop = {
        description = "Flake-parts setup with devenv predefined";
        path = ./develop;
        inherit welcomeText;
      };
    };
  };
}
