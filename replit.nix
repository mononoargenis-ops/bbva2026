{ pkgs }: {
  deps = [
    pkgs.php
    pkgs.phpExtensions.curl
  ];
}