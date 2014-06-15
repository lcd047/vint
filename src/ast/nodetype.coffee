NodeType =
  TOPLEVEL:    1
  COMMENT:     2
  EXCMD:       3
  FUNCTION:    4
  ENDFUNCTION: 5
  DELFUNCTION: 6
  RETURN:      7
  EXCALL:      8
  LET:         9
  UNLET:       10
  LOCKVAR:     11
  UNLOCKVAR:   12
  IF:          13
  ELSEIF:      14
  ELSE:        15
  ENDIF:       16
  WHILE:       17
  ENDWHILE:    18
  FOR:         19
  ENDFOR:      20
  CONTINUE:    21
  BREAK:       22
  TRY:         23
  CATCH:       24
  FINALLY:     25
  ENDTRY:      26
  THROW:       27
  ECHO:        28
  ECHON:       29
  ECHOHL:      30
  ECHOMSG:     31
  ECHOERR:     32
  EXECUTE:     33
  TERNARY:     34
  OR:          35
  AND:         36
  EQUAL:       37
  EQUALCI:     38
  EQUALCS:     39
  NEQUAL:      40
  NEQUALCI:    41
  NEQUALCS:    42
  GREATER:     43
  GREATERCI:   44
  GREATERCS:   45
  GEQUAL:      46
  GEQUALCI:    47
  GEQUALCS:    48
  SMALLER:     49
  SMALLERCI:   50
  SMALLERCS:   51
  SEQUAL:      52
  SEQUALCI:    53
  SEQUALCS:    54
  MATCH:       55
  MATCHCI:     56
  MATCHCS:     57
  NOMATCH:     58
  NOMATCHCI:   59
  NOMATCHCS:   60
  IS:          61
  ISCI:        62
  ISCS:        63
  ISNOT:       64
  ISNOTCI:     65
  ISNOTCS:     66
  ADD:         67
  SUBTRACT:    68
  CONCAT:      69
  MULTIPLY:    70
  DIVIDE:      71
  REMAINDER:   72
  NOT:         73
  MINUS:       74
  PLUS:        75
  SUBSCRIPT:   76
  SLICE:       77
  CALL:        78
  DOT:         79
  NUMBER:      80
  STRING:      81
  LIST:        82
  DICT:        83
  OPTION:      85
  IDENTIFIER:  86
  CURLYNAME:   87
  ENV:         88
  REG:         89

getNodeTypeName = (() ->
  reverseMap = {}
  for nodeTypeName of NodeType
    nodeType = NodeType[nodeTypeName]
    reverseMap[nodeType] = nodeTypeName

  return (nodeType) -> reverseMap[nodeType])()

exports.NodeType = NodeType
exports.getNodeTypeName = getNodeTypeName