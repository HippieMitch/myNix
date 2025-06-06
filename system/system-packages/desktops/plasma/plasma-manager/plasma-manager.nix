{
  programs.plasma = {
    enable = true;

    shortcuts = {
      "kwin"."Window Close" = "Meta+Q";
      "kwin"."Edit Tiles" = "Meta+Y";
      "plasmashell"."activate application launcher" = "Meta+Space";
      "services/fedora.desktop"."_launch" = "Meta+U";
      "services/firefox.desktop."."_launch" = "Meta+B";
      #"services/brave-browser.desktop"."_launch" = "Meta+B";
      "services/Alacritty.desktop"."_launch" = "Meta+T";
      #"services/kitty.desktop"."_launch" = "Meta+T";
      "services/org.kde.dolphin.desktop"."_launch" = "Meta+F";
      "services/org.kde.kate.desktop"."_launch" = "Meta+E";
      "services/org.kde.krunner.desktop"."_launch" = "Meta";
    };

    configFile = {
      "baloofilerc"."Basic Settings"."Indexing-Enabled" = false;
      "baloofilerc"."General"."dbVersion" = 2;
      "baloofilerc"."General"."exclude filters" = "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      "baloofilerc"."General"."exclude filters version" = 9;
      "dolphinrc"."General"."RememberOpenedTabs" = false;
      "dolphinrc"."General"."ShowFullPath" = true;
      "dolphinrc"."General"."ViewPropsTimestamp" = "2024,7,10,20,48,59.027";
      "dolphinrc"."KFileDialog Settings"."Places Icons Auto-resize" = false;
      "dolphinrc"."KFileDialog Settings"."Places Icons Static Size" = 22;
      "dolphinrc"."PreviewSettings"."Plugins" = "appimagethumbnail,audiothumbnail,comicbookthumbnail,cursorthumbnail,djvuthumbnail,ebookthumbnail,exrthumbnail,imagethumbnail,jpegthumbnail,kraorathumbnail,opendocumentthumbnail,svgthumbnail,windowsexethumbnail,windowsimagethumbnail,fontthumbnail,blenderthumbnail,ffmpegthumbs,gsthumbnail,mobithumbnail,rawthumbnail";
      "dolphinrc"."Search"."What" = "Content";
      "kactivitymanagerdrc"."activities"."e88ab34a-73ae-4914-b9f1-83c316665cbf" = "Default";
      "kactivitymanagerdrc"."main"."currentActivity" = "e88ab34a-73ae-4914-b9f1-83c316665cbf";
      "kcminputrc"."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad"."NaturalScroll" = true;
      "kded5rc"."Module-browserintegrationreminder"."autoload" = false;
      "kded5rc"."Module-device_automounter"."autoload" = false;
      "kdeglobals"."DirSelect Dialog"."DirSelectDialog Size" = "1070,736";
     # "kdeglobals"."General"."AccentColor" = "206,141,22";
      "kdeglobals"."General"."TerminalApplication" = "alacritty";
      "kdeglobals"."General"."TerminalService" = "Alacritty.desktop";
      "kdeglobals"."General"."UseSystemBell" = true;
      "kdeglobals"."General"."XftHintStyle" = "hintslight";
      "kdeglobals"."General"."XftSubPixel" = "rgb";
      "kdeglobals"."General"."accentColorFromWallpaper" = true;
      "kdeglobals"."General"."fixed" = "CommitMono Nerd Font Mono,13,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."font" = "Inter Variable,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."menuFont" = "Inter Variable,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."smallestReadableFont" = "Inter Variable,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."toolBarFont" = "Inter Variable,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."Icons"."Theme" = "Tela-nord";
      "kdeglobals"."KDE"."SingleClick" = true;
      "kdeglobals"."KFileDialog Settings"."Allow Expansion" = false;
      "kdeglobals"."KFileDialog Settings"."Automatically select filename extension" = true;
      "kdeglobals"."KFileDialog Settings"."Breadcrumb Navigation" = true;
      "kdeglobals"."KFileDialog Settings"."Decoration position" = 2;
      "kdeglobals"."KFileDialog Settings"."LocationCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."PathCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."Show Bookmarks" = false;
      "kdeglobals"."KFileDialog Settings"."Show Full Path" = false;
      "kdeglobals"."KFileDialog Settings"."Show Inline Previews" = true;
      "kdeglobals"."KFileDialog Settings"."Show Preview" = false;
      "kdeglobals"."KFileDialog Settings"."Show Speedbar" = true;
      "kdeglobals"."KFileDialog Settings"."Show hidden files" = false;
      "kdeglobals"."KFileDialog Settings"."Sort by" = "Name";
      "kdeglobals"."KFileDialog Settings"."Sort directories first" = true;
      "kdeglobals"."KFileDialog Settings"."Sort hidden files last" = false;
      "kdeglobals"."KFileDialog Settings"."Sort reversed" = false;
      "kdeglobals"."KFileDialog Settings"."Speedbar Width" = 152;
      "kdeglobals"."KFileDialog Settings"."View Style" = "Simple";
      "kdeglobals"."PreviewSettings"."MaximumRemoteSize" = 0;
      "kdeglobals"."WM"."activeBackground" = "227,229,231";
      "kdeglobals"."WM"."activeBlend" = "227,229,231";
      "kdeglobals"."WM"."activeFont" = "Inter Variable,11,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."WM"."activeForeground" = "35,38,41";
      "kdeglobals"."WM"."inactiveBackground" = "239,240,241";
      "kdeglobals"."WM"."inactiveBlend" = "239,240,241";
      "kdeglobals"."WM"."inactiveForeground" = "112,125,138";
      "kiorc"."Confirmations"."ConfirmDelete" = true;
      "kiorc"."Confirmations"."ConfirmEmptyTrash" = true;
      "kiorc"."Confirmations"."ConfirmTrash" = false;
      "kiorc"."Executable scripts"."behaviourOnLaunch" = "alwaysAsk";
      "klaunchrc"."BusyCursorSettings"."Bouncing" = false;
      "klaunchrc"."FeedbackStyle"."BusyCursor" = false;
      "krunnerrc"."General"."FreeFloating" = true;
      "krunnerrc"."Plugins"."baloosearchEnabled" = false;
      "krunnerrc"."Plugins"."krunner_appstreamEnabled" = false;
      "krunnerrc"."Plugins"."krunner_charrunnerEnabled" = false;
      "krunnerrc"."Plugins"."krunner_shellEnabled" = false;
      "krunnerrc"."Plugins/Favorites"."plugins" = "krunner_services,krunner_systemsettings";
      "ksplashrc"."KSplash"."Engine" = "none";
      "ksplashrc"."KSplash"."Theme" = "None";
      "kwalletrc"."Wallet"."First Use" = false;
      "kwinrc"."Desktops"."Id_1" = "8b8a6da2-6713-4206-808a-5f56a060c92f";
      "kwinrc"."Desktops"."Id_2" = "d693ff8c-737d-4746-8739-a9fe00de9aa2";
      "kwinrc"."Desktops"."Number" = 2;
      "kwinrc"."Desktops"."Rows" = 1;
      "kwinrc"."Effect-magiclamp"."AnimationDuration" = 330;
      "kwinrc"."Plugins"."magiclampEnabled" = true;
      "kwinrc"."Plugins"."shakecursorEnabled" = false;
      "kwinrc"."Plugins"."squashEnabled" = false;
      "kwinrc"."Tiling"."padding" = 4;
      "kwinrc"."Tiling/ed39b2a4-1e89-575d-8f80-864a4608c8f4"."tiles" = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"layoutDirection\":\"vertical\",\"tiles\":[{\"height\":0.5},{\"height\":0.5}],\"width\":0.578124999999999},{\"width\":0.421875000000001}]}";
      "kwinrc"."Windows"."ElectricBorderCornerRatio" = 0.01;
      "kwinrc"."Xwayland"."Scale" = 1.25;
      "plasma-localerc"."Formats"."LANG" = "en_US.UTF-8";
      "plasmanotifyrc"."Applications/google-chrome"."Seen" = true;
      "plasmanotifyrc"."Applications/org.qbittorrent.qBittorrent"."Seen" = true;
      "plasmanotifyrc"."Applications/thunderbird"."Seen" = true;
    };

    powerdevil = {
      AC = {
        powerButtonAction = "sleep";
        whenLaptopLidClosed = "sleep";
        whenSleepingEnter = "standby";
        displayBrightness = 100;
      };
      battery = {
        powerButtonAction = "sleep";
        whenLaptopLidClosed = "sleep";
        whenSleepingEnter = "standby";
        displayBrightness = 70;
      };
      lowBattery = {
        powerButtonAction = "sleep";
        whenLaptopLidClosed = "sleep";
        whenSleepingEnter = "standby";
        displayBrightness = 50;
      };
    };

   panels = [
          {
            location = "bottom";
            widgets = [
              {
                kickoff = {
                  sortAlphabetically = true;
                 # icon = "nix-snowflake-white";
                };
              }
              {
                iconTasks = {
                  launchers = [
                    "applications:org.kde.dolphin.desktop"
                    "applications:firefox.desktop"
                    #"applications:brave-browser.desktop"
                    "applications:thunderbird.desktop"
                    "applications:discord.desktop"
                    "applications:element-desktop.desktop"
                    "applications:steam.desktop"
                    "applications:net.lutris.Lutris.desktop"
                    "applications:ardour8.desktop"
                    "applications:com.obsproject.Studio.desktop"
                    "applications:org.kde.krita.desktop"
                    "applications:pycharm-community.desktop"
                    "applications:codium.desktop"
                    "applications:virt-manager.desktop"
                  ];
                  behavior = {
                    showTasks = {
                      onlyInCurrentScreen = true;
                      onlyInCurrentDesktop = true;
                      onlyInCurrentActivity = true;
                    };
                  };
                };
              }
              "org.kde.plasma.marginsseparator"
              {
                systemTray.items = {
                  shown = [
                    "org.kde.plasma.battery"
                  ];
                  hidden = [
                    "org.kde.plasma.addons.katesessions"
                    "org.kde.plasma.devicenotifier"
                  ];
                  configs = {
                    battery.showPercentage = false;
                  };
                };
              }
              {
                digitalClock = {
                  time = {
                    showSeconds = "onlyInTooltip";
                    format = "12h";
                  };
                  date = {
                    enable = false;
                  };
                  calendar = {
                    firstDayOfWeek = "sunday";
                    showWeekNumbers = true;
                    plugins = [ "holidaysevents" "astronomicalevents" ];
                  };
                };
              }
            ];
            hiding = "none";
            floating = true;
            lengthMode = "fill";
            opacity = "adaptive";
          }
        ];
        workspace = {
          wallpaper = "/etc/nixos/system/system-packages/desktops/plasma/plasma-manager/wallpapers/wall-345.jpg";
        };
      };
}
