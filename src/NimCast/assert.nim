
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

when not declared(compiler_noreturn):
  type
    compiler_noreturn* = object
else:
  static :
    hint("Declaration of " & "compiler_noreturn" &
        " already exists, not redeclaring")
when not declared(compiler_pure):
  type
    compiler_pure* = object
else:
  static :
    hint("Declaration of " & "compiler_pure" &
        " already exists, not redeclaring")
when not declared(restrict):
  type
    restrict* = object
else:
  static :
    hint("Declaration of " & "restrict" & " already exists, not redeclaring")
when not declared(compiler_func_private):
  type
    compiler_func_private* = object
else:
  static :
    hint("Declaration of " & "compiler_func_private" &
        " already exists, not redeclaring")
type
  assert_handler_t_520094124 = proc (a0: cstring; a1: cint; a2: cstring;
                                     a3: cstring; a4: cstring): void {.cdecl.} ## Generated based on /opt/toolchains/dc/kos/include/assert.h:109:16
  assert_handler_t_520094125 = (when declared(assert_handler_t):
    when ownSizeof(assert_handler_t) != ownSizeof(assert_handler_t_520094124):
      static :
        warning("Declaration of " & "assert_handler_t" &
            " exists but with different size")
    assert_handler_t
   else:
    assert_handler_t_520094124)
when not declared(assert_handler_t):
  type
    assert_handler_t* = assert_handler_t_520094124
else:
  static :
    hint("Declaration of " & "assert_handler_t" &
        " already exists, not redeclaring")
when not declared(compiler_RESTRICT):
  when restrict is typedesc:
    type
      compiler_RESTRICT* = restrict ## Generated based on /opt/toolchains/dc/kos/include/kos/cdefs.h:172:9
  else:
    when restrict is static:
      const
        compiler_RESTRICT* = restrict ## Generated based on /opt/toolchains/dc/kos/include/kos/cdefs.h:172:9
    else:
      let compiler_RESTRICT* = restrict ## Generated based on /opt/toolchains/dc/kos/include/kos/cdefs.h:172:9
else:
  static :
    hint("Declaration of " & "compiler_RESTRICT" &
        " already exists, not redeclaring")
when not declared(compiler_assert):
  proc compiler_assert*(file: cstring; line: cint; expr: cstring; msg: cstring;
                        func_arg: cstring): void {.cdecl, importc: "__assert".}
else:
  static :
    hint("Declaration of " & "compiler_assert" &
        " already exists, not redeclaring")
when not declared(assert_set_handler):
  proc assert_set_handler*(hnd: assert_handler_t_520094125): assert_handler_t_520094125 {.
      cdecl, importc: "assert_set_handler".}
else:
  static :
    hint("Declaration of " & "assert_set_handler" &
        " already exists, not redeclaring")