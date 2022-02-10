//
//  Gitmoji.swift
//  gitmojiBar
//
//  Created by Fernando on 2022/02/10.
//

import Foundation

enum Gitmoji: String, CaseIterable {
    
    case art
    case zap
    case fire
    case bug
    case ambulance
    case sparkles
    case memo
    case rocket
    case lipstick
    case tada
    case whiteCheckMark
    case lock
    case bookmark
    case rotatingLight
    case construction
    case greenHeart
    case arrowDown
    case arrowUp
    case pushPin
    case constructionWorker
    case chartWithUpwardsTrend
    case recycle
    case heavyPlusSign
    case heavyMinusSign
    case wrench
    case hammer
    case globeWithMeridians
    case pencil2
    case poop
    case rewind
    case twistedRightWardsArrows
    case package
    case alien
    case truck
    case pageFacingUp
    case boom
    case bento
    case wheelchair
    case bulb
    case beers
    case speechBallon
    case cardfileBox
    case loudSound
    case mute
    case bustsInSilhouette
    case childrenCrossing
    case buildingConstruction
    case iphone
    case clownFace
    case egg
    case seeNoEvil
    case cameraFlash
    case alembic
    case mag
    case label
    case seedling
    case triangularFlagOnPost
    case goalNet
    case dizzy
    case wastebacket
    case passportControl
    case adhesiveBandage
    case monocleFace
    case coffin
    case testTube
    case necktie
    case stethoscope
    case bricks
    case technologist
}

extension Gitmoji {
    
    var emoji: String {
        switch self {

        case .art:
            return "🎨"
        case .zap:
            return "⚡️"
        case .fire:
            return "🔥"
        case .bug:
            return "🐛"
        case .ambulance:
            return "🚑️"
        case .sparkles:
            return "✨"
        case .memo:
            return "📝"
        case .rocket:
            return "🚀"
        case .lipstick:
            return "💄"
        case .tada:
            return "🎉"
        case .whiteCheckMark:
            return "✅"
        case .lock:
            return "🔒️"
        case .bookmark:
            return "🔖"
        case .rotatingLight:
            return "🚨"
        case .construction:
            return "🚧"
        case .greenHeart:
            return "💚"
        case .arrowDown:
            return "⬇️"
        case .arrowUp:
            return "⬆️"
        case .pushPin:
            return "📌"
        case .constructionWorker:
            return "👷"
        case .chartWithUpwardsTrend:
            return "📈"
        case .recycle:
            return "♻️"
        case .heavyPlusSign:
            return "➕"
        case .heavyMinusSign:
            return "➖"
        case .wrench:
            return "🔧"
        case .hammer:
            return "🔨"
        case .globeWithMeridians:
            return "🌐"
        case .pencil2:
            return "✏️"
        case .poop:
            return "💩"
        case .rewind:
            return "⏪️"
        case .twistedRightWardsArrows:
            return "🔀"
        case .package:
            return "📦️"
        case .alien:
            return "👽️"
        case .truck:
            return "🚚"
        case .pageFacingUp:
            return "📄"
        case .boom:
            return "💥"
        case .bento:
            return "🍱"
        case .wheelchair:
            return "♿️"
        case .bulb:
            return "💡"
        case .beers:
            return "🍻"
        case .speechBallon:
            return "💬"
        case .cardfileBox:
            return "🗃️"
        case .loudSound:
            return "🔊"
        case .mute:
            return "🔊"
        case .bustsInSilhouette:
            return "👥"
        case .childrenCrossing:
            return "🚸"
        case .buildingConstruction:
            return "🏗️"
        case .iphone:
            return "📱"
        case .clownFace:
            return "🤡"
        case .egg:
            return "🥚"
        case .seeNoEvil:
            return "🙈"
        case .cameraFlash:
            return "📸"
        case .alembic:
            return "⚗️"
        case .mag:
            return "🔍️"
        case .label:
            return "🏷️"
        case .seedling:
            return "🌱"
        case .triangularFlagOnPost:
            return "🚩"
        case .goalNet:
            return "🥅"
        case .dizzy:
            return "💫"
        case .wastebacket:
            return "🗑️"
        case .passportControl:
            return "🛂"
        case .adhesiveBandage:
            return "🩹"
        case .monocleFace:
            return "🧐"
        case .coffin:
            return "⚰️"
        case .testTube:
            return "🧪"
        case .necktie:
            return "👔"
        case .stethoscope:
            return "🩺"
        case .bricks:
            return "🧱"
        case .technologist:
            return "🧑‍💻"
        }
    }
    
    var code: String {
        let snakeCase = self.rawValue.snakeCase()
        return String(format:":%@:",snakeCase)
    }
    
    var description: String {
        switch self {
            
        case .art:
            return "Improve structure / format of the code."
        case .zap:
            return "Improve performance."
        case .fire:
            return "Remove code or files."
        case .bug:
            return "Fix a bug."
        case .ambulance:
            return "Critical hotfix."
        case .sparkles:
            return "Introduce new features."
        case .memo:
            return "Add or update documentation."
        case .rocket:
            return "Deploy stuff."
        case .lipstick:
            return "Add or update the UI and style files."
        case .tada:
            return "Begin a project."
        case .whiteCheckMark:
            return "Add, update, or pass tests."
        case .lock:
            return "Fix security issues."
        case .bookmark:
            return "Release / Version tags."
        case .rotatingLight:
            return "Fix compiler / linter warnings."
        case .construction:
            return "Work in progress."
        case .greenHeart:
            return "Fix CI Build."
        case .arrowDown:
            return "Downgrade dependencies."
        case .arrowUp:
            return "Upgrade dependencies."
        case .pushPin:
            return "Pin dependencies to specific versions."
        case .constructionWorker:
            return "Add or update CI build system."
        case .chartWithUpwardsTrend:
            return "Add or update analytics or track code."
        case .recycle:
            return "Refactor code."
        case .heavyPlusSign:
            return "Add a dependency."
        case .heavyMinusSign:
            return "Remove a dependency."
        case .wrench:
            return "Add or update configuration files."
        case .hammer:
            return "Add or update development scripts."
        case .globeWithMeridians:
            return "Internationalization and localization."
        case .pencil2:
            return "Fix typos."
        case .poop:
            return "Write bad code that needs to be improved."
        case .rewind:
            return "Revert changes."
        case .twistedRightWardsArrows:
            return "Merge branches."
        case .package:
            return "Add or update compiled files or packages."
        case .alien:
            return "Update code due to external API changes."
        case .truck:
            return "Move or rename resources (e.g.: files, paths, routes)."
        case .pageFacingUp:
            return "Add or update license."
        case .boom:
            return "Introduce breaking changes."
        case .bento:
            return "Add or update assets."
        case .wheelchair:
            return "Improve accessibility."
        case .bulb:
            return "Add or update comments in source code."
        case .beers:
            return "Write code drunkenly."
        case .speechBallon:
            return "Add or update text and literals."
        case .cardfileBox:
            return "Perform database related changes."
        case .loudSound:
            return "Add or update logs."
        case .mute:
            return "Remove logs."
        case .bustsInSilhouette:
            return "Add or update contributor(s)."
        case .childrenCrossing:
            return "Improve user experience / usability."
        case .buildingConstruction:
            return "Make architectural changes."
        case .iphone:
            return "Work on responsive design."
        case .clownFace:
            return "Mock things."
        case .egg:
            return "Add or update an easter egg."
        case .seeNoEvil:
            return "Add or update a .gitignore file."
        case .cameraFlash:
            return "Add or update snapshots."
        case .alembic:
            return "Perform experiments."
        case .mag:
            return "Improve SEO."
        case .label:
            return "Add or update types."
        case .seedling:
            return "Add or update seed files."
        case .triangularFlagOnPost:
            return "Add, update, or remove feature flags."
        case .goalNet:
            return "Catch errors."
        case .dizzy:
            return "Add or update animations and transitions."
        case .wastebacket:
            return "Deprecate code that needs to be cleaned up."
        case .passportControl:
            return "Work on code related to authorization, roles and permissions."
        case .adhesiveBandage:
            return "Simple fix for a non-critical issue."
        case .monocleFace:
            return "Data exploration/inspection."
        case .coffin:
            return "Remove dead code."
        case .testTube:
            return "Add a failing test."
        case .necktie:
            return "Add or update business logic"
        case .stethoscope:
            return "Add or update healthcheck."
        case .bricks:
            return "Infrastructure related changes."
        case .technologist:
            return "Improve developer experience"
        }
    }
}
