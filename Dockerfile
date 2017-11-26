FROM haxe:3.4-windowsservercore

# Install HaxeFlixel and related add-ons
RUN haxelib install flixel
RUN haxelib install flixel-addons
RUN haxelib install flixel-ui
RUN haxelib run openfl setup windows

# Install game libraries
RUN haxelib install firetongue 
RUN haxelib install compiletime

# Install native libraries
RUN haxelib install openfl-webm
RUN haxelib git steamwrap https://github.com/larsiusprime/SteamWrap.git
