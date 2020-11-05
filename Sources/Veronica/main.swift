import CommandLineToolCore
import ArgumentParser
import Files
import Extensions
import Foundation

struct Veronica: ParsableCommand {

    static var configuration = CommandConfiguration(
        abstract: "Veronica generates the start IOS project with your name",
        version: "1.0.0"
    )

    @Argument(help: "Name for your project")
    var projectName: String

    @Option(name: [.short, .customLong("path")], help: "Path for your new project")
    var path: String

    mutating func run() throws {
        print("""
            Creating project with name '\(projectName)'
            in '\(path)'
            """)

        let originFolder = try Folder(path: "/Users/savinov/Desktop/Veronica/AppName")
        let targetFolder: Folder

        do {
            targetFolder = try Folder(path: path)
        }
        catch {
            throw RuntimeError("Couldn't write to '\(path)'!")
        }

        try originFolder.copy(to: targetFolder)

        do {
            let projectFolder = try Folder(path: path + "/AppName")
            try projectFolder.renameAll(with: ["AppName": projectName])
        }
        catch {
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

Veronica.main()

