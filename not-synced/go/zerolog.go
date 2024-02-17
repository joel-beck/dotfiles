package main

import (
	"fmt"
	"html/template"
	"os"

	"github.com/labstack/echo/v4"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
)

func SetupLogger(level zerolog.Level) {
	log.Logger = log.Output(zerolog.ConsoleWriter{
		Out:        os.Stderr,
		TimeFormat: "15:04:05",
		NoColor:    false,
		FormatFieldName: func(i interface{}) string {
			// \x1b is the escape character
			// 34 is the color code for blue
			// m is the end of the color code
			// %s is the placeholder for the field name
			// 0 is the color code for reset
			return fmt.Sprintf("\x1b[34m%s=\x1b[0m", i) // Blue color for field names
		},
		FormatFieldValue: func(i interface{}) string {
			// 32 is the color code for green
			return fmt.Sprintf("\x1b[32m%s\x1b[0m", i) // Green color for field values
		},
	}).With().Caller().Logger()

	zerolog.SetGlobalLevel(level)
}

func LogParsedTemplates(parsedTemplates *template.Template) {
	// log the parsed template file names
	for _, t := range parsedTemplates.Templates() {
		log.Debug().Str("template", t.Name()).Msg("Parsed template")
	}
}

func LogUserInputs(c echo.Context, inputs UserInputs) {
	log.Debug().Interface("inputs", inputs).Msg("User Inputs")
}

func LogResponseData(c echo.Context, responseData ResponseData) {
	log.Debug().Interface("response", responseData).Msg("Response Data")
}
