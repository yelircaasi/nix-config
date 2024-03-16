{
  pkgs,
  g,
  ...
}: {
  imports = [
    ./jira
    ./azure
    ./vscode
  ];
}
