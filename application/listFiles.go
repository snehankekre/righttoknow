// listFiles walks through a specified path,
// builds a list of files within the path and returns the list
package application
import (
  "os"
  "path/filepath"
)
func listFiles(searchDir string) ([]string, error) {
  i := 0
  fileList := make([]string, 0)
  e := filepath.Walk(searchDir, func(path string, f os.FileInfo, err error) error {
    //skip empty file
    if i == 0 {
      i += 1
      } else  {
        fileList = append(fileList, path)
      }
      return err
	})
  if e != nil {
    panic(e)
  }
  return fileList, nil
}
