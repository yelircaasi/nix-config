builtins.mapAttrs
(name: value: {inherit name;} // value)
{
  olivia = {
    desc = "BOE 0x0C3F";
    pixelWidth = 1920;
    pixelHeight = 1200;
    physWidth = 300;
    physHeight = 190;
    edgeSide = 6;
    edgeBottom = 28;
  };
  betsy = {
    desc = "Chimei Innolux Corporation 0x15D7";
    pixelWidth = 1920;
    pixelHeight = 1080;
    physWidth = 346;
    physHeight = 195;
    gapLeft = null;
    gapBottom = 40;
  };
  hank = {
    desc = "999";
    pixelWidth = 1920;
    pixelHeight = 1080;
    physWidth = null;
    physHeight = null;
    gapLeft = null;
    gapBottom = null;
  };
  homeLeft = {
    desc = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
    pixelWidth = 2560;
    pixelHeight = 1440;
    physWidth = 597;
    physHeight = 336;
    gapLeft = 7;
    gapBottom = 73;
  };
  homeRight = {
    desc = "Ancor Communications Inc ASUS PB278 E8LMTF000788";
    pixelWidth = 2560;
    pixelHeight = 1440;
    physWidth = 597;
    physHeight = 336;
    gapLeft = 48;
    gapBottom = 73;
  };
  work1Samsung = {
    desc = "Samsung Electric Company LS27D60xU HNAX501336";
    pixelWidth = 2560;
    pixelHeight = 1440;
    physWidth = 597;
    physHeight = 336;
    gapLeft = 24;
    gapBottom = 132;
  };
  work1Dell = {
    desc = "Dell Inc. DELL P2418D MY3ND87U07VT";
    pixelWidth = 2560;
    pixelHeight = 1440;
    physWidth = 526;
    physHeight = 296;
    gapLeft = 24;
    gapBottom = 132;
  };
}
