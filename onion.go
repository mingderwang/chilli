
//go:generate ginger $GOFILE
package main

//@ginger
type TaipeiCity struct {
	Ginger_Created int32 `json:"ginger_created"`
	Ginger_Id int32 `json:"ginger_id" gorm:"primary_key"`

	Message string `json:"message"`
	Size float64 `json:"size"`
	Number float64 `json:"number"`
}