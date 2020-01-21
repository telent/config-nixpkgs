{ lib, buildGoModule, fetchgitPrivate, fetchgit, fetchFromGitHub }:

buildGoModule rec {
  pname = "bnw_cli";
  version = "0.37.2_1";
  modSha256 = "06870jw97jw0hgimfvv723al12awcvakvm5qpccs2ncfwgl3mr8j";
  src = /Users/daniel.barlow/src/bnw_cli;
}
