# SPDX-License-Identifier: MIT OR Apache-2.0
{ lib }:
{
  archPackages = entries:
    lib.unique (map (entry: entry.arch)
      (lib.filter (entry: !(entry.aur or false)) entries));

  aurPackages = entries:
    lib.unique (map (entry: entry.arch)
      (lib.filter (entry: entry.aur or false) entries));
}
