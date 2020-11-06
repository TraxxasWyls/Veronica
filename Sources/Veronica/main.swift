import ArgumentParser
import Files
import CommandLineToolCore
import Foundation

struct Veronica: ParsableCommand {

    private enum Constants {
        static let AppName = "AppName"
        static let originPath = "/Users/savinov/Desktop/Veronica/AppName"
    }

    static var configuration = CommandConfiguration(
        abstract: "Veronica generates the start IOS project with your name",
        version: "1.0.0"
    )

    @Argument(help: "Name for your project")
    var projectName: String

    @Option(name: [.short, .customLong("path")], help: "Path for your new project")
    var path: String

    mutating func validate() throws {
        guard !projectName.isEmpty else {
            throw ValidationError("Please provide name for your project.")
        }

        guard !path.isEmpty else {
            throw ValidationError("Please provide path for your project.")
        }
    }

    mutating func run() throws {
        print("Creating project '\(projectName)' in '\(path)'")
        let originFolder = try Folder(path: Constants.originPath)
        let targetFolder: Folder
        do {
            targetFolder = try Folder(path: path)
        } catch {
            throw RuntimeError("Couldn't write to '\(path)'!")
        }
        try originFolder.copy(to: targetFolder)
        do {
            let projectFolder = try Folder(path: path + "/\(Constants.AppName)")
            try projectFolder.renameAll(with: [Constants.AppName: projectName])
        } catch {
            throw RuntimeError("Couldn't write with name '\(projectName)'!")
        }
        print("Done!")
    }
}

struct RuntimeError: Error, CustomStringConvertible {
    var description: String

    init(_ description: String) {
        self.description = description
    }
}

Veronica.main(["KEKES","-p","/Users/savinov/Desktop/"])

