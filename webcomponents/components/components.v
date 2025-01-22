module components

import freeflowuniverse.herolib.data.markdownparser
import freeflowuniverse.herolib.security.authentication {StatelessAuthenticator}
import veb

pub struct MarkdownContent {
pub mut:
    nav string
    content string
    title string
}

pub interface IComponent {
    html() string
}
