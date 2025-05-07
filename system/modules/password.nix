{
  lib,
  pkgs,
  deviceConfig,
  ...
}: {
  environment.systemPackages = with pkgs; [
    libpwquality
  ];
  security.pam.services.passwd.rules.password.pwquality = {
    control = "required"; 
    modulePath = "${pkgs.libpwquality.lib}/lib/security/pam_pwquality.so"; 
    # order BEFORE pam_unix.so
    order =  0; # security.pam.services.passwd.rules.password.unix.order - 10;
    settings = {
      # shadowretry = 3;
      minlen = 12;
      # difok = 6;
      # dcredit = -1;
      # ucredit = -1;
      # ocredit = -1;
      # lcredit = -1;
      enforce_for_root = true;
    }; 
  };
}