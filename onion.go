//go:generate ginger $GOFILE
package main

//@ginger
type City struct {
	Ginger_Created int32 `json:"ginger_created"`
	Ginger_Id      int32 `json:"ginger_id" gorm:"primary_key"`

	Name    string `json:"name"`
	Age     int    `json:"age"`
	Address string `json:"address"`
}
