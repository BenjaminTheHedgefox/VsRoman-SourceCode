import sys.FileSystem;
import backend.Mods;

function onCreatePost()
{
 if (FileSystem.exists("mods/" + Mods.currentModDirectory + "/songs/" + game.curSong.toLowerCase() + "/Voices-" + game.boyfriend.curCharacter + ".ogg")) {
  Paths.voices(game.curSong, game.boyfriend.curCharacter);
  game.vocals.loadEmbedded(Paths.returnSound(null, game.curSong.toLowerCase() + "/Voices-" + game.boyfriend.curCharacter, 'songs'));
 }
}