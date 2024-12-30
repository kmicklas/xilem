{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
  buildInputs = [
    pkgs.libxkbcommon
    pkgs.vulkan-loader
    pkgs.xorg.libX11
    pkgs.xorg.libxcb
    pkgs.xorg.libxcb
    pkgs.xorg.libXcursor
    pkgs.xorg.libXi
  ];

  nativeBuildInputs = [
    pkgs.clang
    pkgs.pkg-config
  ];

  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
}
