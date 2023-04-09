def url-encode [] {
 url encode | str join ";"
}

{
    scheme: https,
    host: readme-typing-svg.demolab.com,
    path: /
    params: {
        lines: [
            "5+ graduated, engineering and research"
            "compilation, cryptography + distributed data storage"
            "writing (1) rust, (2) python and (POSIX) bash, ..."
            "love open source and contributing to FOSS community"
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
