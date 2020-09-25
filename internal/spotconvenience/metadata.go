package spotconvenience

import (
	"fmt"
	"github.com/wtolson/go-taglib"
	"strings"
)

const delimeter string = "; "

func setFileTags(serializedTrack *SpotifyTrack, path string) error {
	file, err := taglib.Read(path)
	if err != nil {
		return fmt.Errorf("error reading file to write metadata: ", err)
	}

	file.SetArtist(strings.Join(serializedTrack.TrackArtistNames, delimeter))
	file.SetTitle(serializedTrack.TrackName)
	file.SetTrack(int(serializedTrack.TrackNumber))
	file.SetAlbum(serializedTrack.Album.Name)
	file.SetYear(serializedTrack.Album.Date.Year())
	file.SetGenre(strings.Join(serializedTrack.Album.Genre, delimeter))

	file.Save()
	file.Close()
	return nil
}
