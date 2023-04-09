def url-encode [] {
 url encode | str join ";"
}

{
    scheme: https,
    host: readme-typing-svg.demolab.com,
    path: /
    params: {
        lines: [
            "5+ graduated student doing engineering and research"
            "working in compilation, cryptography and distributed data storage"
            "writing rust as a primary language, python as the backup and bash for POSIX requirements (many more)"
            "love open source and contributing to the FOSS community"
            "i use arch btw"
            "i use nushell btw"
            "i use (neo)vim btw"
        ],
        font: "Fira Code",
        center: "true",
        width: "440",
        height: "45",
        color: "f75c7e",
        vCenter: "true",
        pause: "1000",
        size: "22"
    }
}
| update params.lines {|| get params.lines | url-encode}
| update params.font {|| get params.font | url-encode}
| url join
