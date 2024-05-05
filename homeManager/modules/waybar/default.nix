{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  ]; 
  programs.waybar.enable = true;
  programs.waybar.settings = {
  mainBar = {
    layer = "top";
    position = "top";
    margin = "5";
    height = 30;
   
    modules-left = [
        "hyprland/workspaces" 
        "custom/media" 
        "hyprland/window" 
    ];
    modules-center = [
      "clock"
    ];
    modules-right = [
      "tray" 
      "memory"
      "cpu" 
      "pulseaudio" 
      "pulseaudio#microphone" 
      "network" 
    ];
  };
  };
  programs.waybar.style = ''
  * {
    border: none;
    border-radius: 0;
    font-family: "JetBrainsMono Nerd Font";    
    margin: 1px;
    padding: 0;
    color: #66ACED;
  }
  window#waybar {
    background-color: rgba(0,0,0,0);
    color: #AAB2BF;
    font-family: Intel One Mono Nerd Font;
    font-size: 14px;
  }
  #battery,
#clock,
#backlight,
#cpu,
#custom-keyboard-layout,
#memory,
#mode,
#custom-weather,
#network,
#pulseaudio,
#temperature,
#tray,
#idle_inhibitor,
#window,
#custom-power,
#workspaces,
#custom-media,
#custom-PBPbattery {
    padding:0.25rem 0.75rem;
    margin: 1px 6px;
    background-color: rgba(0,0,0,0.8);
    border-radius: 20px;
}
#clock {
    /* color: #ff4499; */
    color: #73daca;
}

#custom-weather {
    color: #ff4499;
}

#battery {
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#battery.warning {
    color: orange;
}

#battery.critical {
    color: red;
}

#battery.warning.discharging {
    animation-name: blink-warning;
    animation-duration: 3s;
}

#battery.critical.discharging {
    animation-name: blink-critical;
    animation-duration: 2s;
}

#cpu {
    color: #f7768e;
}

#cpu.warning {
    color: orange;
}

#cpu.critical {
    color: red;
}

#memory {
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    color: #f7768e;
}

#memory.warning {
    color: orange;
 }

#memory.critical {
    color: red;
    animation-name: blink-critical;
    animation-duration: 2s;
    padding-left:5px;
    padding-right:5px;
}

#mode {
    /* background: @highlight; */
    /* background: #dfdfdf; */
    border-bottom: 3px transparent;
    color:#ff4499;
    margin-left: 5px;
    padding: 7px;
}

#network.disconnected {
    color: orange;
}

#pulseaudio {
    color: #bb9af7;
    border-left: 0px;
    border-right: 0px;
    margin-right: 0;
    border-radius: 20px 0 0 20px;
}

/* #pulseaudio.muted { */
/*     color: #ff4499; */
/* } */
/**/
#pulseaudio.microphone {
    border-left: 0px;
    border-right: 0px;
    margin-left: 0;
    padding-left: 0;
    border-radius: 0 20px 20px 0;
}

/* #pulseaudio.microphone.muted { */
/*     color: #ff4499; */
/* } */


#temperature.critical {
    color: red;
}

#window {
    font-weight: bold;
    color: #f7768e;
}

#custom-media {
    color: #bb9af7;
}

#workspaces {
    font-size:16px;
    background-color: rgba(0,0,0,0.8);
    border-radius: 20px;
}

#workspaces button {
    border-bottom: 3px solid transparent;
    margin-bottom: 0px;
    color: #dfdfdf;
}

#workspaces button.active {
    border-bottom: 1px solid  #ff4499;
    margin-bottom: 1px;
    padding-left:0;
}

#workspaces button.urgent {
    border-color: #c9545d;
    color: #c9545d;
}

#custom-power {
    font-size:18px;
    padding-right: 1rem;
}

#custom-launcher {
    font-size:15px;
    margin-left:15px;
    margin-right:10px;
}

#backlight.icon {
    padding-right:1px;
    font-size: 13px;
}
'';
}