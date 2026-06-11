"""
Logging Setup with rich
"""

import logging

from rich.console import Console
from rich.highlighter import ReprHighlighter
from rich.logging import RichHandler
from rich.theme import Theme

theme = Theme({
    "info": "cyan",
    "warning": "yellow",
    "error": "bold red",
    "critical": "bold red",
})

handler = RichHandler(
    console=Console(theme=theme),
    show_time=True,
    omit_repeated_times=True,
    show_level=True,
    show_path=True,
    enable_link_path=True,
    markup=False,  # if true, the filename and line number are not displayed
    highlighter=ReprHighlighter(),
    rich_tracebacks=True,
)

formatter = logging.Formatter(
    # if function name in included, hyperlinks do not work
    fmt="%(message)s [%(filename)s:%(lineno)d]",
    datefmt="[%Y-%m-%d %H:%M:%S]",
)
handler.setFormatter(formatter)

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
logger.addHandler(handler)
