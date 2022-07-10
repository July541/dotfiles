{ ... }:
{
  targets.darwin.keybindings = {
    "~f"    = "moveWordForward:";
    "~b"    = "moveWordBackward:";
    "~d"    = "deleteWordForward:";
    "~^h"   = "deleteWordBackward:";
    "^a"    = "moveToBeginningOfLine:";
    "^e"    = "moveToEndOfLine:";
    "~v"    = "pageUp:";
    "^v"    = "pageDown:";
  };
}
