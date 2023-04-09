def url-encode [] {
 url encode | str join ";"
}

def main [
    --embed: bool
    --indent: int = 4
] {
    let url = ({
        scheme: https,
        host: readme-typing-svg.demolab.com,
        path: /
        params: {
            #   "................................................."
            lines: [
                "5+ graduated, engineering and research"
                "compilation, cryptography + distributed storage"
                "writing (1) rust, (2) python + (POSIX) bash, ..."
                "love open source + contributing to FOSS community"
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
            size: "15"
        }
    }
    | update params.lines {|| get params.lines | url-encode}
    | update params.font {|| get params.font | url-encode}
    | url join)

    if $embed {
        let indentation = (' ' * $indent)
        return $'($indentation)<img src="($url)" /></a>'
    }

    return $url
}
