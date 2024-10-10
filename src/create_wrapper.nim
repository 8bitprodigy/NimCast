import futhark, os, macros

const kos_path* = getEnv("KOS_BASE") / "include"

importc:
    outputPath "NimCast" / "assert.nim"
    path kos_path
    "assert.h"
importc:
    outputPath "NimCast" / "kos.nim"
    path kos_path
    "kos.h"
importc:
    outputPath "NimCast" / "libgen.nim"
    path kos_path
    "libgen.h"
importc:
    outputPath "NimCast" / "malloc.nim"
    path kos_path
    "malloc.h"
importc:
    outputPath "NimCast" / "netdb.h"
    path kos_path
    "netdb.h"
importc:
    outputPath "NimCast" / "poll.nim"
    path kos_path
    "poll.h"
importc:
    outputPath "NimCast" / "pthread.nim"
    path kos_path
    "pthread.h"
importc:
    outputPath "NimCast" / "threads.nim"
    path kos_path
    "threads.h"

