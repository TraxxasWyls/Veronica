#!/bin/sh

swiftgen run xcassets -p ./AppName/Resources/Images/appname-structured-assets.stencil ./AppName/Resources/Images/Assets.xcassets --output "AppName/Resources/Images/Images.swift"
swiftgen run strings -p ./AppName/Resources/Localization/appname-structured-strings.stencil ./AppName/Resources/Localization/ru.lproj/Localizable.strings --output "AppName/Resources/Localization/Localization.swift"
swiftgen run colors -t swift4 ./AppName/Resources/Colors/Colors.json --output "AppName/Resources/Colors/Colors.swift"
swiftgen run fonts -t swift4 ./AppName/Resources/Fonts --output "AppName/Resources/Fonts/Fonts.swift"
