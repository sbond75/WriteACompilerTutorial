with import <nixpkgs> {};

mkShell {
  buildInputs = [ haskellPackages.happy 
                 haskellPackages.alex ];
}
