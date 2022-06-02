#!/usr/bin/env bats

@test "first run" {
  repository=$(pwd)
  temporaryDirectory=$(mktemp -d)
  expected=$temporaryDirectory/expected
  cp -r ./tests/first-run/expected/. $expected
  mkdir -p $expected/plugins/dreck
  cp -r ./dreck $expected/plugins
  mkdir -p $expected/plugins/p7zip
  cp -r . $expected/plugins/p7zip
  actual=$temporaryDirectory/actual
  cp -r ./tests/first-run/input/. $actual
  mkdir -p $actual/plugins/dreck
  cp -r ./dreck $actual/plugins
  mkdir -p $actual/plugins/p7zip
  cp -r . $actual/plugins/p7zip
  expectedArchive=$repository/tests/first-run/expected-archive
  actualArchive=$temporaryDirectory/actual-archive
  mkdir -p $actualArchive
  cd $actual

  make --file ./plugins/dreck/makefile

  cd $actualArchive
  7z e $actual/plugins/p7zip/generated/archive.zip
  diff --brief --recursive $actualArchive $expectedArchive
  rm -r $actual/plugins/p7zip/generated
  diff --brief --recursive $actual $expected
  rm -rf $temporaryDirectory
}
