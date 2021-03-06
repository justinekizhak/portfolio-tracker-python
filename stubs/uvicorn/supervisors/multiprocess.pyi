from typing import Any
from uvicorn.subprocess import get_subprocess as get_subprocess

HANDLED_SIGNALS: Any
logger: Any

class Multiprocess:
    config: Any = ...
    target: Any = ...
    sockets: Any = ...
    processes: Any = ...
    should_exit: Any = ...
    pid: Any = ...
    def __init__(self, config: Any, target: Any, sockets: Any) -> None: ...
    def signal_handler(self, sig: Any, frame: Any) -> None: ...
    def run(self) -> None: ...
    def startup(self) -> None: ...
    def shutdown(self) -> None: ...
