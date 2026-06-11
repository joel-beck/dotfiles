package main

import (
	"html/template"
	"io"

	"github.com/labstack/echo/v4"
	"github.com/rs/zerolog"
)

type Template struct {
	templates *template.Template
}

func (t *Template) Render(w io.Writer, name string, data interface{}, c echo.Context) error {
	return t.templates.ExecuteTemplate(w, name, data)
}

func parseTemplates() *template.Template {
	parsedTemplates := template.Must(template.ParseGlob("src/*.html"))
	template.Must(parsedTemplates.ParseGlob("src/**/*.html"))
	LogParsedTemplates(parsedTemplates)
	return parsedTemplates
}

func bindUserInputs(c echo.Context) *UserInputs {
	userInputs := new(UserInputs)
	if err := c.Bind(userInputs); err != nil {
		c.Logger().Error(err)
	}
	LogUserInputs(c, *userInputs)
	return userInputs
}

func computeResponseData(c echo.Context, userInputs UserInputs) ResponseData {
	responseData := ResponseData{
		Name:   userInputs.Name,
		Job:    userInputs.Job,
		Salary: userInputs.Salary,
	}
	LogResponseData(c, responseData)
	return responseData
}

func main() {
	SetupLogger(zerolog.DebugLevel)

	e := echo.New()
	e.Renderer = &Template{
		templates: parseTemplates(),
	}

	e.Use(MiddlewareRequestLogger())

	// map all files from the local `dist` directory to the `/static` route
	// access e.g. via http://localhost:8080/static/style.css
	e.Static("/static", "./dist")

	e.GET("/health", func(c echo.Context) error {
		return c.String(200, "OK")
	})

	e.GET("/", func(c echo.Context) error {
		return c.Render(200, "index", nil)
	})

	e.GET("/form", func(c echo.Context) error {
		return c.Render(200, "form", nil)
	})

	e.POST("/form-results", func(c echo.Context) error {
		userInputs := bindUserInputs(c)
		responseData := computeResponseData(c, *userInputs)

		return c.Render(200, "form-results", responseData)
	})

	e.Logger.Fatal(e.Start(":8080"))
}
