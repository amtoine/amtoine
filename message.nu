def url-encode [] {
 url encode | str join ";"
}

{
    scheme: https,
    host: readme-typing-svg.demolab.com,
    path: /
    params: {
        lines: [
            "this is a test"
            "another one"
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
