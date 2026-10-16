{
  description = "typst doc";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            just

            typst
            # typst-live, miro # not good
            # okular
            #
            # Using tinymist as a preview
            #

            # Dev
            tinymist # typst lsp
            ltex-ls-plus # language tool lsp
            typstyle # formatter
          ];

          TYPST_FONT_PATHS = pkgs.lib.makeSearchPath "share/fonts" [
            pkgs.libertinus
            pkgs.inconsolata
          ];
        };
      }
    );
}
