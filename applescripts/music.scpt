set spotify_state to false
set music_state to false

if is_app_running("Spotify") then
	tell application "Spotify" to set spotify_state to (player state as text)
end if
if is_app_running("Music") then
	tell application "Music" to set music_state to (player state as text)
end if
(* Whatever other music applications you use *)

if spotify_state is equal to "playing" then
	tell application "Spotify"
		set track_name to name of current track
		set artist_name to artist of current track
		return "♫ " & track_name & " - #[bold]" & artist_name & "#[nobold]"
	end tell
else if music_state is equal to "playing" then
	tell application "Music"
		set track_name to name of current track
		set artist_name to artist of current track
		set track_is_favorited to favorited of current track
		if track_is_favorited then
			set favorited_status to "♥ "
		else
			set favorited_status to ""
		end if
		return favorited_status & "♫  " & track_name & " - #[bold]" & artist_name & "#[nobold]"
	end tell
else
	return ""
end if

on is_app_running(app_name)
	tell application "System Events" to (name of processes) contains app_name
end is_app_running

