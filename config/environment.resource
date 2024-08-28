*** Settings ***
Documentation     This is a resource file, that contain environment variables. This can be improved to use real env vars
Library           SeleniumLibrary

*** Variables ***
${APP_URL}      https://finance.yahoo.com/
${BROWSER}      Chrome