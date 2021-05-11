.intel_syntax noprefix
.bss
token:
  .zero 8
user_input:
  .zero 8
locals:
  .zero 800
globals:
  .zero 800
strings:
  .zero 8
tags:
  .zero 8
enum_vars:
  .zero 8
code:
  .zero 8000
filename:
  .zero 8
.data
.LC433:
  .string "; %d printing functions is done\n"
.LC432:
  .string ".globl main\n"
.LC431:
  .string ".text\n"
.LC430:
  .string "; %d printing global non string variables with initializer is done\n"
.LC429:
  .string "; %d printing global string variables with initializer is done\n"
.LC428:
  .string "  .string \"%s\"\n"
.LC427:
  .string ".LC%d:\n"
.LC426:
  .string ".data\n"
.LC425:
  .string "; %d printing global variables without initializer is done\n"
.LC424:
  .string ".bss\n"
.LC423:
  .string ".intel_syntax noprefix\n"
.LC422:
  .string "; %d parse is done\n"
.LC421:
  .string "; %d tokenize is done\n"
.LC420:
  .string "; i = %d, filename=%s\n"
.LC419:
  .string "; %d starting main\n"
.LC418:
  .string ""
.LC417:
  .string "%*s"
.LC416:
  .string "%.*s\n"
.LC415:
  .string "%s:%d: "
.LC414:
  .string ""
.LC413:
  .string "%*s"
.LC412:
  .string "%.*s\n"
.LC411:
  .string "%s:%d: "
.LC410:
  .string ""
.LC409:
  .string "%*s"
.LC408:
  .string "%.*s\n"
.LC407:
  .string "%s:%d: "
.LC406:
  .string "\n"
.LC405:
  .string "\n"
.LC404:
  .string "\n"
.LC403:
  .string "[DEBUG] node->kind = %d\n"
.LC402:
  .string "[DEBUG] node->varsize = %d\n"
.LC401:
  .string "[DEBUG] node->varname = %s\n"
.LC400:
  .string "[DEBUG] node->funcname = %s\n"
.LC399:
  .string "[DEBUG] node is null\n"
.LC398:
  .string "\n"
.LC397:
  .string "[DEBUG] type = %s "
.LC396:
  .string "STRUCT"
.LC395:
  .string "ARRAY"
.LC394:
  .string "PTR"
.LC393:
  .string "CHAR"
.LC392:
  .string "INT"
.LC391:
  .string "[DEBUG] type is null"
.LC390:
  .string "[DEBUG] token: %2d %s\n"
.LC389:
  .string "[DEBUG] token is null\n"
.LC388:
  .string "%s: fseek: %s"
.LC387:
  .string "%s: fseek: %s"
.LC386:
  .string "cannot open %s: %s"
.LC385:
  .string "r"
.LC384:
  .string "not variable"
.LC383:
  .string "  push rax\n"
.LC382:
  .string "  add rax, %d\n"
.LC381:
  .string "  pop rax\n"
.LC380:
  .string "  push offset %s\n"
.LC379:
  .string "  push rax\n"
.LC378:
  .string "  sub rax, %d\n"
.LC377:
  .string "  mov rax, rbp\n"
.LC376:
  .string "  push rax\n"
.LC375:
  .string "  and rax, rdi\n"
.LC374:
  .string "  or rax, rdi\n"
.LC373:
  .string "  xor rax, rdi\n"
.LC372:
  .string "  movzb rax, al\n"
.LC371:
  .string "  setle al\n"
.LC370:
  .string "  cmp rax, rdi\n"
.LC369:
  .string "  movzb rax, al\n"
.LC368:
  .string "  setl al\n"
.LC367:
  .string "  cmp rax, rdi\n"
.LC366:
  .string "  movzb rax, al\n"
.LC365:
  .string "  setne al\n"
.LC364:
  .string "  cmp rax, rdi\n"
.LC363:
  .string "  movzb rax, al\n"
.LC362:
  .string "  sete al\n"
.LC361:
  .string "  cmp rax, rdi\n"
.LC360:
  .string "  idiv rdi\n"
.LC359:
  .string "  cqo\n"
.LC358:
  .string "  imul rax, rdi\n"
.LC357:
  .string "  sub rax, rdi\n"
.LC356:
  .string "  add rax, rdi\n"
.LC355:
  .string "  pop rax\n"
.LC354:
  .string "  pop rdi\n"
.LC353:
  .string "  push rax\n"
.LC352:
  .string "  mov rax, [rax]\n"
.LC351:
  .string "  movsxd rax, DWORD PTR [rax]\n"
.LC350:
  .string "  movsx rax, BYTE PTR [rax]\n"
.LC349:
  .string "  pop rax\n"
.LC348:
  .string "  ret\n"
.LC347:
  .string "  pop rbp\n"
.LC346:
  .string "  mov rsp, rbp\n"
.LC345:
  .string "  mov [rbp-%d], %s\n"
.LC344:
  .string "  mov [rbp-%d], %s\n"
.LC343:
  .string "  mov [rbp-%d], %s\n"
.LC342:
  .string "  sub rsp, %d\n"
.LC341:
  .string "  mov rbp, rsp\n"
.LC340:
  .string "  push rbp\n"
.LC339:
  .string "%s:\n"
.LC338:
  .string ".global %s\n"
.LC337:
  .string "  push rax\n"
.LC336:
  .string ".L.end.%03d:\n"
.LC335:
  .string "  add rsp, 8\n"
.LC334:
  .string "  call %s\n"
.LC333:
  .string "  mov rax, 0\n"
.LC332:
  .string "  sub rsp, 8\n"
.LC331:
  .string ".L.call.%03d:\n"
.LC330:
  .string "  jmp .L.end.%03d\n"
.LC329:
  .string "  call %s\n"
.LC328:
  .string "  mov rax, 0\n"
.LC327:
  .string "  jnz .L.call.%03d\n"
.LC326:
  .string "  and rax, 15\n"
.LC325:
  .string "  mov rax, rsp\n"
.LC324:
  .string "  pop %s\n"
.LC323:
  .string "invalid number of args. lteq 6."
.LC322:
  .string ".Lcase%d:\n"
.LC321:
  .string ".Lend%d:\n"
.LC320:
  .string "  jmp .Lend%d\n"
.LC319:
  .string "  jmp .Lcase%d\n"
.LC318:
  .string "  je .Lcase%d\n"
.LC317:
  .string "  cmp rax, %d\n"
.LC316:
  .string "  pop rax\n"
.LC315:
  .string ".Lend%d:\n"
.LC314:
  .string "  jmp .Lbegin%d\n"
.LC313:
  .string ".Lcontinue%d:\n"
.LC312:
  .string "  je .Lend%d\n"
.LC311:
  .string "  cmp rax, 0\n"
.LC310:
  .string "  pop rax\n"
.LC309:
  .string "  push 1\n"
.LC308:
  .string ".Lbegin%d:\n"
.LC307:
  .string ".Lend%d:\n"
.LC306:
  .string "  jmp .Lbegin%d\n"
.LC305:
  .string "  je .Lend%d\n"
.LC304:
  .string "  cmp rax, 0\n"
.LC303:
  .string "  pop rax\n"
.LC302:
  .string ".Lcontinue%d:\n"
.LC301:
  .string ".Lbegin%d:\n"
.LC300:
  .string ".Lend%d:\n"
.LC299:
  .string "  jmp .Lend%d\n"
.LC298:
  .string ".Lelse%d:\n"
.LC297:
  .string "  jmp .Lend%d\n"
.LC296:
  .string "  je .Lelse%d\n"
.LC295:
  .string "  cmp rax, 0\n"
.LC294:
  .string "  pop rax\n"
.LC293:
  .string ".Lend%d:\n"
.LC292:
  .string ".Lelse%d:\n"
.LC291:
  .string "  jmp .Lend%d\n"
.LC290:
  .string "  jmp .Lend%d\n"
.LC289:
  .string ".Lelse%d:\n"
.LC288:
  .string "  jmp .Lend%d\n"
.LC287:
  .string "  je .Lelse%d\n"
.LC286:
  .string "  cmp rax, 0\n"
.LC285:
  .string "  pop rax\n"
.LC284:
  .string "  jmp .Lcontinue%d\n"
.LC283:
  .string "currently not in for, while"
.LC282:
  .string "  jmp .Lend%d\n"
.LC281:
  .string "currently not in for, while"
.LC280:
  .string "  ret\n"
.LC279:
  .string "  pop rbp\n"
.LC278:
  .string "  mov rsp, rbp\n"
.LC277:
  .string "  pop rax\n"
.LC276:
  .string "  push rdi\n"
.LC275:
  .string "  mov [rax], rdi\n"
.LC274:
  .string "  mov [rax], edi\n"
.LC273:
  .string "  mov [rax], dil\n"
.LC272:
  .string "  pop rax\n"
.LC271:
  .string "  pop rdi\n"
.LC270:
  .string "  push rax\n"
.LC269:
  .string "  mov rax, [rax]\n"
.LC268:
  .string "  mov rax, [rax]\n"
.LC267:
  .string "  movsxd rax, DWORD PTR [rax]\n"
.LC266:
  .string "  movsx rax, BYTE PTR [rax]\n"
.LC265:
  .string "  pop rax\n"
.LC264:
  .string "  .long 0x%x\n"
.LC263:
  .string "  .quad .LC%d\n"
.LC262:
  .string "  .string \"%s\"\n"
.LC261:
  .string "  .quad .LC%d\n"
.LC260:
  .string "  .byte 0x%x\n"
.LC259:
  .string "  .long 0x%x\n"
.LC258:
  .string "  .zero 0x%x\n"
.LC257:
  .string "  .zero %d\n"
.LC256:
  .string "%s:\n"
.LC255:
  .string "  push %d\n"
.LC254:
  .string "  push offset .LC%d\n"
.LC253:
  .string "  push rax\n"
.LC252:
  .string "  add rax, rdi\n"
.LC251:
  .string "  pop rax\n"
.LC250:
  .string "  pop rdi\n"
.LC249:
  .string "  push 1\n"
.LC248:
  .string "  push rax\n"
.LC247:
  .string "  sub rax, rdi\n"
.LC246:
  .string "  pop rax\n"
.LC245:
  .string "  pop rdi\n"
.LC244:
  .string "  push 1\n"
.LC243:
  .string "  push rax\n"
.LC242:
  .string "  movzb rax, al\n"
.LC241:
  .string "  sete al\n"
.LC240:
  .string "  cmp rax, 0\n"
.LC239:
  .string "  pop rax\n"
.LC238:
  .string "  push rax\n"
.LC237:
  .string "  not rax\n"
.LC236:
  .string "  pop rax\n"
.LC235:
  .string ".Lend%d:\n"
.LC234:
  .string "  push 1\n"
.LC233:
  .string ".Ltrue%d:\n"
.LC232:
  .string "  jmp .Lend%d\n"
.LC231:
  .string "  push 0\n"
.LC230:
  .string "  jne .Ltrue%d\n"
.LC229:
  .string "  cmp rax, 0\n"
.LC228:
  .string "  pop rax\n"
.LC227:
  .string "  jne .Ltrue%d\n"
.LC226:
  .string "  cmp rax, 0\n"
.LC225:
  .string "  pop rax\n"
.LC224:
  .string ".Lend%d:\n"
.LC223:
  .string "  push 0\n"
.LC222:
  .string ".Lfalse%d:\n"
.LC221:
  .string "  jmp .Lend%d\n"
.LC220:
  .string "  push 1\n"
.LC219:
  .string "  je .Lfalse%d\n"
.LC218:
  .string "  cmp rax, 0\n"
.LC217:
  .string "  pop rax\n"
.LC216:
  .string "  je .Lfalse%d\n"
.LC215:
  .string "  cmp rax, 0\n"
.LC214:
  .string "  pop rax\n"
.LC213:
  .string "node must not be NULL"
.LC212:
  .string "r9"
.LC211:
  .string "r8"
.LC210:
  .string "rcx"
.LC209:
  .string "rdx"
.LC208:
  .string "rsi"
.LC207:
  .string "rdi"
.LC206:
  .string "r9d"
.LC205:
  .string "r8d"
.LC204:
  .string "ecx"
.LC203:
  .string "edx"
.LC202:
  .string "esi"
.LC201:
  .string "edi"
.LC200:
  .string "r9w"
.LC199:
  .string "r8w"
.LC198:
  .string "cx"
.LC197:
  .string "dx"
.LC196:
  .string "si"
.LC195:
  .string "di"
.LC194:
  .string "r9b"
.LC193:
  .string "r8b"
.LC192:
  .string "cl"
.LC191:
  .string "dl"
.LC190:
  .string "sil"
.LC189:
  .string "dil"
.LC188:
  .string "]"
.LC187:
  .string "["
.LC186:
  .string "invalid definition of function or variable"
.LC185:
  .string "ident should come here."
.LC184:
  .string "*"
.LC183:
  .string "char"
.LC182:
  .string "unexpected Type->ty comes here"
.LC181:
  .string "array size is zero."
.LC180:
  .string "type should be non null"
.LC179:
  .string "invalid dereference"
.LC178:
  .string "member ident is not found"
.LC177:
  .string "this type doesn't have members."
.LC176:
  .string "member type is not passed."
.LC175:
  .string "member ident must come here"
.LC174:
  .string "unexpected type is passed."
.LC173:
  .string ","
.LC172:
  .string "{"
.LC171:
  .string "}"
.LC170:
  .string ","
.LC169:
  .string "{"
.LC168:
  .string "}"
.LC167:
  .string "{"
.LC166:
  .string "{"
.LC165:
  .string "="
.LC164:
  .string "invalid definition of function or variable"
.LC163:
  .string "--"
.LC162:
  .string "++"
.LC161:
  .string "->"
.LC160:
  .string "."
.LC159:
  .string "]"
.LC158:
  .string "["
.LC157:
  .string "variable %s is not defined yet"
.LC156:
  .string "; [DEBUG] %s name\n"
.LC155:
  .string ","
.LC154:
  .string ")"
.LC153:
  .string "("
.LC152:
  .string ")"
.LC151:
  .string "("
.LC150:
  .string ")"
.LC149:
  .string "*"
.LC148:
  .string "it's not allowed to use sizeof for incomplete type"
.LC147:
  .string "("
.LC146:
  .string "("
.LC145:
  .string "("
.LC144:
  .string ")"
.LC143:
  .string "("
.LC142:
  .string "("
.LC141:
  .string ")"
.LC140:
  .string "invalid type name is passed here. %s"
.LC139:
  .string "char"
.LC138:
  .string "int"
.LC137:
  .string "("
.LC136:
  .string "("
.LC135:
  .string "~"
.LC134:
  .string "!"
.LC133:
  .string "&"
.LC132:
  .string "*"
.LC131:
  .string "-"
.LC130:
  .string "+"
.LC129:
  .string "--"
.LC128:
  .string "++"
.LC127:
  .string "/"
.LC126:
  .string "*"
.LC125:
  .string "-"
.LC124:
  .string "+"
.LC123:
  .string ">="
.LC122:
  .string ">"
.LC121:
  .string "<="
.LC120:
  .string "<"
.LC119:
  .string "!="
.LC118:
  .string "=="
.LC117:
  .string "&"
.LC116:
  .string "^"
.LC115:
  .string "|"
.LC114:
  .string "&&"
.LC113:
  .string "||"
.LC112:
  .string ":"
.LC111:
  .string "?"
.LC110:
  .string "/="
.LC109:
  .string "*="
.LC108:
  .string "-="
.LC107:
  .string "+="
.LC106:
  .string "="
.LC105:
  .string "size of statements in one block is over the limitation."
.LC104:
  .string "}"
.LC103:
  .string "{"
.LC102:
  .string ";"
.LC101:
  .string ";"
.LC100:
  .string ";"
.LC99:
  .string ";"
.LC98:
  .string ")"
.LC97:
  .string ")"
.LC96:
  .string ";"
.LC95:
  .string ";"
.LC94:
  .string ";"
.LC93:
  .string "("
.LC92:
  .string ":"
.LC91:
  .string "stray case"
.LC90:
  .string ":"
.LC89:
  .string "stray case"
.LC88:
  .string ")"
.LC87:
  .string "("
.LC86:
  .string ")"
.LC85:
  .string "("
.LC84:
  .string ")"
.LC83:
  .string "("
.LC82:
  .string ";"
.LC81:
  .string ";"
.LC80:
  .string ";"
.LC79:
  .string "invalid token comes here. %d"
.LC78:
  .string ","
.LC77:
  .string ")"
.LC76:
  .string ";"
.LC75:
  .string "}"
.LC74:
  .string "{"
.LC73:
  .string "{"
.LC72:
  .string ","
.LC71:
  .string "}"
.LC70:
  .string "="
.LC69:
  .string "}"
.LC68:
  .string "{"
.LC67:
  .string "type not found."
.LC66:
  .string "{"
.LC65:
  .string ";"
.LC64:
  .string ";"
.LC63:
  .string ";"
.LC62:
  .string "["
.LC61:
  .string "("
.LC60:
  .string "def is NULL"
.LC59:
  .string ";"
.LC58:
  .string ";"
.LC57:
  .string "char literal must be one length"
.LC56:
  .string "unclosed char literal"
.LC55:
  .string "トークナイズできません"
.LC54:
  .string "\\"
.LC53:
  .string ".+-*/()<>;={},&[]!~|^?:"
.LC52:
  .string "||"
.LC51:
  .string "&&"
.LC50:
  .string "--"
.LC49:
  .string "++"
.LC48:
  .string "/="
.LC47:
  .string "*="
.LC46:
  .string "-="
.LC45:
  .string "+="
.LC44:
  .string "->"
.LC43:
  .string ">="
.LC42:
  .string "<="
.LC41:
  .string "!="
.LC40:
  .string "=="
.LC39:
  .string "block comment is not closed.\n"
.LC38:
  .string "*/"
.LC37:
  .string "/*"
.LC36:
  .string "\n"
.LC35:
  .string "extern"
.LC34:
  .string "\n"
.LC33:
  .string "#include"
.LC32:
  .string "\n"
.LC31:
  .string "//"
.LC30:
  .string ""
.LC29:
  .string "stderr"
.LC28:
  .string "errno"
.LC27:
  .string "default"
.LC26:
  .string "SEEK_CUR"
.LC25:
  .string "SEEK_SET"
.LC24:
  .string "SEEK_END"
.LC23:
  .string "NULL"
.LC22:
  .string "true"
.LC21:
  .string "false"
.LC20:
  .string "case"
.LC19:
  .string "switch"
.LC18:
  .string "continue"
.LC17:
  .string "break"
.LC16:
  .string "enum"
.LC15:
  .string "typedef"
.LC14:
  .string "struct"
.LC13:
  .string "sizeof"
.LC12:
  .string "FILE"
.LC11:
  .string "size_t"
.LC10:
  .string "bool"
.LC9:
  .string "char"
.LC8:
  .string "void"
.LC7:
  .string "int"
.LC6:
  .string "for"
.LC5:
  .string "while"
.LC4:
  .string "else"
.LC3:
  .string "if"
.LC2:
  .string "return"
.LC1:
  .string "数ではありません\n"
.LC0:
  .string "expected: '%c'\nactual: '%s'\n"
reserved_words:
  .quad .LC2
  .long 0x5
  .zero 0x4
  .quad .LC3
  .long 0x6
  .zero 0x4
  .quad .LC4
  .long 0x7
  .zero 0x4
  .quad .LC5
  .long 0x8
  .zero 0x4
  .quad .LC6
  .long 0x9
  .zero 0x4
  .quad .LC7
  .long 0xa
  .zero 0x4
  .quad .LC8
  .long 0xa
  .zero 0x4
  .quad .LC9
  .long 0xa
  .zero 0x4
  .quad .LC10
  .long 0xa
  .zero 0x4
  .quad .LC11
  .long 0xa
  .zero 0x4
  .quad .LC12
  .long 0xa
  .zero 0x4
  .quad .LC13
  .long 0xb
  .zero 0x4
  .quad .LC14
  .long 0xd
  .zero 0x4
  .quad .LC15
  .long 0xe
  .zero 0x4
  .quad .LC16
  .long 0xf
  .zero 0x4
  .quad .LC17
  .long 0x10
  .zero 0x4
  .quad .LC18
  .long 0x11
  .zero 0x4
  .quad .LC19
  .long 0x12
  .zero 0x4
  .quad .LC20
  .long 0x13
  .zero 0x4
  .quad .LC21
  .long 0x16
  .zero 0x4
  .quad .LC22
  .long 0x15
  .zero 0x4
  .quad .LC23
  .long 0x17
  .zero 0x4
  .quad .LC24
  .long 0x1a
  .zero 0x4
  .quad .LC25
  .long 0x18
  .zero 0x4
  .quad .LC26
  .long 0x19
  .zero 0x4
  .quad .LC27
  .long 0x14
  .zero 0x4
  .quad .LC28
  .long 0x1b
  .zero 0x4
  .quad .LC29
  .long 0x1c
  .zero 0x4
  .quad .LC30
  .long 0x3
  .zero 0x4
cur_scope_depth:
  .long 0x0
current_switch:
  .long 0x0
argreg1:
  .quad .LC189
  .quad .LC190
  .quad .LC191
  .quad .LC192
  .quad .LC193
  .quad .LC194
argreg2:
  .quad .LC195
  .quad .LC196
  .quad .LC197
  .quad .LC198
  .quad .LC199
  .quad .LC200
argreg4:
  .quad .LC201
  .quad .LC202
  .quad .LC203
  .quad .LC204
  .quad .LC205
  .quad .LC206
argreg8:
  .quad .LC207
  .quad .LC208
  .quad .LC209
  .quad .LC210
  .quad .LC211
  .quad .LC212
if_sequence:
  .long 0x0
break_sequence:
  .long 0x0
continue_sequence:
  .long 0x0
.text
.globl main
.global consume
consume:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.001
  mov rax, 0
  call check
  jmp .L.end.001
.L.call.001:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.001:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse0
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend0
.Lelse0:
.Lend0:
  mov rax, rsp
  and rax, 15
  jnz .L.call.002
  mov rax, 0
  call advance_token
  jmp .L.end.002
.L.call.002:
  sub rsp, 8
  mov rax, 0
  call advance_token
  add rsp, 8
.L.end.002:
  push rax
  push 1
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global consume_kind
consume_kind:
  push rbp
  mov rbp, rsp
  sub rsp, 12
  mov [rbp-4], edi
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.004
  mov rax, 0
  call check_kind
  jmp .L.end.004
.L.call.004:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.004:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse3
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend3
.Lelse3:
.Lend3:
  mov rax, rbp
  sub rax, 12
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.005
  mov rax, 0
  call advance_token
  jmp .L.end.005
.L.call.005:
  sub rsp, 8
  mov rax, 0
  call advance_token
  add rsp, 8
.L.end.005:
  push rax
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global check
check:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-8], rdi
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse6
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.008
  mov rax, 0
  call strlen
  jmp .L.end.008
.L.call.008:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.008:
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse7
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.009
  mov rax, 0
  call memcmp
  jmp .L.end.009
.L.call.009:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.009:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse7
  push 1
  jmp .Lend7
.Lfalse7:
  push 0
.Lend7:
  pop rax
  cmp rax, 0
  je .Lfalse6
  push 1
  jmp .Lend6
.Lfalse6:
  push 0
.Lend6:
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global check_kind
check_kind:
  push rbp
  mov rbp, rsp
  sub rsp, 4
  mov [rbp-4], edi
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global expect
expect:
  push rbp
  mov rbp, rsp
  sub rsp, 808
  mov [rbp-8], rdi
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue11
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.013
  mov rax, 0
  call strlen
  jmp .L.end.013
.L.call.013:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.013:
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue12
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.014
  mov rax, 0
  call memcmp
  jmp .L.end.014
.L.call.014:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.014:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue12
  push 0
  jmp .Lend12
.Ltrue12:
  push 1
.Lend12:
  pop rax
  cmp rax, 0
  jne .Ltrue11
  push 0
  jmp .Lend11
.Ltrue11:
  push 1
.Lend11:
  pop rax
  cmp rax, 0
  je .Lelse10
  mov rax, rbp
  sub rax, 808
  push rax
  push 0
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 8
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 16
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 24
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 32
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 40
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 48
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 56
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 64
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 72
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 80
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 88
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 96
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 104
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 112
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 120
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 128
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 136
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 144
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 152
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 160
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 168
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 176
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 184
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 192
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 200
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 208
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 216
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 224
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 232
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 240
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 248
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 256
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 264
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 272
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 280
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 288
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 296
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 304
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 312
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 320
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 328
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 336
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 344
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 352
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 360
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 368
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 376
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 384
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 392
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 400
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 408
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 416
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 424
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 432
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 440
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 448
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 456
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 464
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 472
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 480
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 488
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 496
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 504
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 512
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 520
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 528
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 536
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 544
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 552
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 560
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 568
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 576
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 584
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 592
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 600
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 608
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 616
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 624
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 632
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 640
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 648
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 656
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 664
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 672
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 680
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 688
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 696
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 704
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 712
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 720
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 728
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 736
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 744
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 752
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 760
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 768
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 776
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 784
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push 792
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 808
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.015
  mov rax, 0
  call memcpy
  jmp .L.end.015
.L.call.015:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.015:
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC0
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 808
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.016
  mov rax, 0
  call error_at2
  jmp .L.end.016
.L.call.016:
  sub rsp, 8
  mov rax, 0
  call error_at2
  add rsp, 8
.L.end.016:
  push rax
  jmp .Lend10
.Lelse10:
.Lend10:
  mov rax, rsp
  and rax, 15
  jnz .L.call.017
  mov rax, 0
  call advance_token
  jmp .L.end.017
.L.call.017:
  sub rsp, 8
  mov rax, 0
  call advance_token
  add rsp, 8
.L.end.017:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global expect_number
expect_number:
  push rbp
  mov rbp, rsp
  sub rsp, 4
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 2
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse18
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.019
  mov rax, 0
  call print_token
  jmp .L.end.019
.L.call.019:
  sub rsp, 8
  mov rax, 0
  call print_token
  add rsp, 8
.L.end.019:
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.020
  mov rax, 0
  call error_at0
  jmp .L.end.020
.L.call.020:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.020:
  push rax
  jmp .Lend18
.Lelse18:
.Lend18:
  mov rax, rbp
  sub rax, 4
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.021
  mov rax, 0
  call advance_token
  jmp .L.end.021
.L.call.021:
  sub rsp, 8
  mov rax, 0
  call advance_token
  add rsp, 8
.L.end.021:
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global advance_token
advance_token:
  push rbp
  mov rbp, rsp
  push offset token
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rsp, rbp
  pop rbp
  ret
.global at_eof
at_eof:
  push rbp
  mov rbp, rsp
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 3
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global new_token
new_token:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov [rbp-4], edi
  mov [rbp-12], rsi
  mov [rbp-20], rdx
  mov [rbp-24], ecx
  mov rax, rbp
  sub rax, 32
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.022
  mov rax, 0
  call calloc
  jmp .L.end.022
.L.call.022:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.022:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global startswith
startswith:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.024
  mov rax, 0
  call strlen
  jmp .L.end.024
.L.call.024:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.024:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.023
  mov rax, 0
  call memcmp
  jmp .L.end.023
.L.call.023:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.023:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global is_alnum
is_alnum:
  push rbp
  mov rbp, rsp
  sub rsp, 1
  mov [rbp-1], dil
  push 97
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse26
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 122
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse26
  push 1
  jmp .Lend26
.Lfalse26:
  push 0
.Lend26:
  pop rax
  cmp rax, 0
  jne .Ltrue25
  push 65
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse28
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 90
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse28
  push 1
  jmp .Lend28
.Lfalse28:
  push 0
.Lend28:
  pop rax
  cmp rax, 0
  jne .Ltrue27
  push 48
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse30
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 57
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse30
  push 1
  jmp .Lend30
.Lfalse30:
  push 0
.Lend30:
  pop rax
  cmp rax, 0
  jne .Ltrue29
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 95
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue29
  push 0
  jmp .Lend29
.Ltrue29:
  push 1
.Lend29:
  pop rax
  cmp rax, 0
  jne .Ltrue27
  push 0
  jmp .Lend27
.Ltrue27:
  push 1
.Lend27:
  pop rax
  cmp rax, 0
  jne .Ltrue25
  push 0
  jmp .Lend25
.Ltrue25:
  push 1
.Lend25:
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global tokenize
tokenize:
  push rbp
  mov rbp, rsp
  sub rsp, 116
  mov rax, rbp
  sub rax, 8
  push rax
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  add rax, 8
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  add rax, 32
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  add rax, 24
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin31:
.Lcontinue31:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend31
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.033
  mov rax, 0
  call isspace
  jmp .L.end.033
.L.call.033:
  sub rsp, 8
  mov rax, 0
  call isspace
  add rsp, 8
.L.end.033:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse32
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lcontinue31
  jmp .Lend32
.Lelse32:
.Lend32:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC31
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.035
  mov rax, 0
  call startswith
  jmp .L.end.035
.L.call.035:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.035:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse34
.Lbegin36:
.Lcontinue36:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC32
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.037
  mov rax, 0
  call startswith
  jmp .L.end.037
.L.call.037:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.037:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend36
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin36
.Lend36:
  jmp .Lcontinue31
  jmp .Lend34
.Lelse34:
.Lend34:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC33
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.039
  mov rax, 0
  call startswith
  jmp .L.end.039
.L.call.039:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.039:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse38
.Lbegin40:
.Lcontinue40:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC34
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.041
  mov rax, 0
  call startswith
  jmp .L.end.041
.L.call.041:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.041:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend40
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin40
.Lend40:
  jmp .Lcontinue31
  jmp .Lend38
.Lelse38:
.Lend38:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC35
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.043
  mov rax, 0
  call startswith
  jmp .L.end.043
.L.call.043:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.043:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse42
.Lbegin44:
.Lcontinue44:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC36
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.045
  mov rax, 0
  call startswith
  jmp .L.end.045
.L.call.045:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.045:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend44
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin44
.Lend44:
  jmp .Lcontinue31
  jmp .Lend42
.Lelse42:
.Lend42:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC37
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.047
  mov rax, 0
  call startswith
  jmp .L.end.047
.L.call.047:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.047:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse46
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 2
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push offset .LC38
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.048
  mov rax, 0
  call strstr
  jmp .L.end.048
.L.call.048:
  sub rsp, 8
  mov rax, 0
  call strstr
  add rsp, 8
.L.end.048:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse49
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC39
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.050
  mov rax, 0
  call error_at0
  jmp .L.end.050
.L.call.050:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.050:
  push rax
  jmp .Lend49
.Lelse49:
.Lend49:
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 2
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue31
  jmp .Lend46
.Lelse46:
.Lend46:
  mov rax, rbp
  sub rax, 68
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin51:
  push offset reserved_words
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 16
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 3
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend51
  mov rax, rbp
  sub rax, 80
  push rax
  push offset reserved_words
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 16
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 84
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.052
  mov rax, 0
  call strlen
  jmp .L.end.052
.L.call.052:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.052:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 88
  push rax
  push offset reserved_words
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 16
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.055
  mov rax, 0
  call startswith
  jmp .L.end.055
.L.call.055:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.055:
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse54
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.056
  mov rax, 0
  call is_alnum
  jmp .L.end.056
.L.call.056:
  sub rsp, 8
  mov rax, 0
  call is_alnum
  add rsp, 8
.L.end.056:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse54
  push 1
  jmp .Lend54
.Lfalse54:
  push 0
.Lend54:
  pop rax
  cmp rax, 0
  je .Lelse53
  mov rax, rbp
  sub rax, 56
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.057
  mov rax, 0
  call new_token
  jmp .L.end.057
.L.call.057:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.057:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 68
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend51
  jmp .Lend53
.Lelse53:
.Lend53:
.Lcontinue51:
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin51
.Lend51:
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse58
  jmp .Lcontinue31
  jmp .Lend58
.Lelse58:
.Lend58:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.061
  mov rax, 0
  call startswith
  jmp .L.end.061
.L.call.061:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.061:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue60
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC41
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.063
  mov rax, 0
  call startswith
  jmp .L.end.063
.L.call.063:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.063:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue62
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC42
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.065
  mov rax, 0
  call startswith
  jmp .L.end.065
.L.call.065:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.065:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue64
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC43
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.067
  mov rax, 0
  call startswith
  jmp .L.end.067
.L.call.067:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.067:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue66
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC44
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.069
  mov rax, 0
  call startswith
  jmp .L.end.069
.L.call.069:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.069:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue68
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC45
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.071
  mov rax, 0
  call startswith
  jmp .L.end.071
.L.call.071:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.071:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue70
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC46
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.073
  mov rax, 0
  call startswith
  jmp .L.end.073
.L.call.073:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.073:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue72
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC47
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.075
  mov rax, 0
  call startswith
  jmp .L.end.075
.L.call.075:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.075:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue74
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC48
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.077
  mov rax, 0
  call startswith
  jmp .L.end.077
.L.call.077:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.077:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue76
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC49
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.079
  mov rax, 0
  call startswith
  jmp .L.end.079
.L.call.079:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.079:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue78
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC50
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.081
  mov rax, 0
  call startswith
  jmp .L.end.081
.L.call.081:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.081:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue80
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC51
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.083
  mov rax, 0
  call startswith
  jmp .L.end.083
.L.call.083:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.083:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue82
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC52
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.084
  mov rax, 0
  call startswith
  jmp .L.end.084
.L.call.084:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.084:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue82
  push 0
  jmp .Lend82
.Ltrue82:
  push 1
.Lend82:
  pop rax
  cmp rax, 0
  jne .Ltrue80
  push 0
  jmp .Lend80
.Ltrue80:
  push 1
.Lend80:
  pop rax
  cmp rax, 0
  jne .Ltrue78
  push 0
  jmp .Lend78
.Ltrue78:
  push 1
.Lend78:
  pop rax
  cmp rax, 0
  jne .Ltrue76
  push 0
  jmp .Lend76
.Ltrue76:
  push 1
.Lend76:
  pop rax
  cmp rax, 0
  jne .Ltrue74
  push 0
  jmp .Lend74
.Ltrue74:
  push 1
.Lend74:
  pop rax
  cmp rax, 0
  jne .Ltrue72
  push 0
  jmp .Lend72
.Ltrue72:
  push 1
.Lend72:
  pop rax
  cmp rax, 0
  jne .Ltrue70
  push 0
  jmp .Lend70
.Ltrue70:
  push 1
.Lend70:
  pop rax
  cmp rax, 0
  jne .Ltrue68
  push 0
  jmp .Lend68
.Ltrue68:
  push 1
.Lend68:
  pop rax
  cmp rax, 0
  jne .Ltrue66
  push 0
  jmp .Lend66
.Ltrue66:
  push 1
.Lend66:
  pop rax
  cmp rax, 0
  jne .Ltrue64
  push 0
  jmp .Lend64
.Ltrue64:
  push 1
.Lend64:
  pop rax
  cmp rax, 0
  jne .Ltrue62
  push 0
  jmp .Lend62
.Ltrue62:
  push 1
.Lend62:
  pop rax
  cmp rax, 0
  jne .Ltrue60
  push 0
  jmp .Lend60
.Ltrue60:
  push 1
.Lend60:
  pop rax
  cmp rax, 0
  je .Lelse59
  mov rax, rbp
  sub rax, 56
  push rax
  push 1
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 2
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.085
  mov rax, 0
  call new_token
  jmp .L.end.085
.L.call.085:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.085:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 2
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue31
  jmp .Lend59
.Lelse59:
.Lend59:
  push offset .LC53
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.087
  mov rax, 0
  call strchr
  jmp .L.end.087
.L.call.087:
  sub rsp, 8
  mov rax, 0
  call strchr
  add rsp, 8
.L.end.087:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse86
  mov rax, rbp
  sub rax, 56
  push rax
  push 1
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.088
  mov rax, 0
  call new_token
  jmp .L.end.088
.L.call.088:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.088:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lcontinue31
  jmp .Lend86
.Lelse86:
.Lend86:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 39
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse89
  mov rax, rbp
  sub rax, 56
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.090
  mov rax, 0
  call read_char_literal
  jmp .L.end.090
.L.call.090:
  sub rsp, 8
  mov rax, 0
  call read_char_literal
  add rsp, 8
.L.end.090:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue31
  jmp .Lend89
.Lelse89:
.Lend89:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 34
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse91
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 96
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin92:
.Lcontinue92:
  push 1
  pop rax
  cmp rax, 0
  je .Lend92
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC54
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.094
  mov rax, 0
  call startswith
  jmp .L.end.094
.L.call.094:
  sub rsp, 8
  mov rax, 0
  call startswith
  add rsp, 8
.L.end.094:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse93
  mov rax, rbp
  sub rax, 96
  push rax
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 2
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue92
  jmp .Lend93
.Lelse93:
.Lend93:
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 34
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse95
  jmp .Lend92
  jmp .Lend95
.Lelse95:
.Lend95:
  mov rax, rbp
  sub rax, 96
  push rax
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin92
.Lend92:
  mov rax, rbp
  sub rax, 100
  push rax
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  push 12
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.096
  mov rax, 0
  call new_token
  jmp .L.end.096
.L.call.096:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.096:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue31
  jmp .Lend91
.Lelse91:
.Lend91:
  push 97
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse99
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 122
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse99
  push 1
  jmp .Lend99
.Lfalse99:
  push 0
.Lend99:
  pop rax
  cmp rax, 0
  jne .Ltrue98
  push 65
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse100
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 90
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse100
  push 1
  jmp .Lend100
.Lfalse100:
  push 0
.Lend100:
  pop rax
  cmp rax, 0
  jne .Ltrue98
  push 0
  jmp .Lend98
.Ltrue98:
  push 1
.Lend98:
  pop rax
  cmp rax, 0
  je .Lelse97
  mov rax, rbp
  sub rax, 108
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin101:
.Lcontinue101:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.102
  mov rax, 0
  call is_alnum
  jmp .L.end.102
.L.call.102:
  sub rsp, 8
  mov rax, 0
  call is_alnum
  add rsp, 8
.L.end.102:
  push rax
  pop rax
  cmp rax, 0
  je .Lend101
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin101
.Lend101:
  mov rax, rbp
  sub rax, 56
  push rax
  push 4
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.103
  mov rax, 0
  call new_token
  jmp .L.end.103
.L.call.103:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.103:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue31
  jmp .Lend97
.Lelse97:
.Lend97:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.105
  mov rax, 0
  call isdigit
  jmp .L.end.105
.L.call.105:
  sub rsp, 8
  mov rax, 0
  call isdigit
  add rsp, 8
.L.end.105:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse104
  mov rax, rbp
  sub rax, 56
  push rax
  push 2
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.106
  mov rax, 0
  call new_token
  jmp .L.end.106
.L.call.106:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.106:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 116
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.107
  mov rax, 0
  call strtol
  jmp .L.end.107
.L.call.107:
  sub rsp, 8
  mov rax, 0
  call strtol
  add rsp, 8
.L.end.107:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 116
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lcontinue31
  jmp .Lend104
.Lelse104:
.Lend104:
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC55
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.108
  mov rax, 0
  call error_at0
  jmp .L.end.108
.L.call.108:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.108:
  push rax
  jmp .Lbegin31
.Lend31:
  push 3
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.109
  mov rax, 0
  call new_token
  jmp .L.end.109
.L.call.109:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.109:
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global read_char_literal
read_char_literal:
  push rbp
  mov rbp, rsp
  sub rsp, 33
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse110
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC56
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.111
  mov rax, 0
  call error_at0
  jmp .L.end.111
.L.call.111:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.111:
  push rax
  jmp .Lend110
.Lelse110:
.Lend110:
  mov rax, rbp
  sub rax, 25
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 92
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse112
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 25
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.113
  mov rax, 0
  call get_escape_char
  jmp .L.end.113
.L.call.113:
  sub rsp, 8
  mov rax, 0
  call get_escape_char
  add rsp, 8
.L.end.113:
  push rax
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lend112
.Lelse112:
  mov rax, rbp
  sub rax, 25
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lend112
.Lend112:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 39
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse114
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC57
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.115
  mov rax, 0
  call error_at0
  jmp .L.end.115
.L.call.115:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.115:
  push rax
  jmp .Lend114
.Lelse114:
.Lend114:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 33
  push rax
  push 2
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.116
  mov rax, 0
  call new_token
  jmp .L.end.116
.L.call.116:
  sub rsp, 8
  mov rax, 0
  call new_token
  add rsp, 8
.L.end.116:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 33
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 25
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 33
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global get_escape_char
get_escape_char:
  push rbp
  mov rbp, rsp
  sub rsp, 1
  mov [rbp-1], dil
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rax
  cmp rax, 48
  je .Lcase118
  cmp rax, 101
  je .Lcase119
  cmp rax, 114
  je .Lcase120
  cmp rax, 102
  je .Lcase121
  cmp rax, 118
  je .Lcase122
  cmp rax, 110
  je .Lcase123
  cmp rax, 116
  je .Lcase124
  cmp rax, 98
  je .Lcase125
  cmp rax, 97
  je .Lcase126
  jmp .Lcase127
  jmp .Lend117
.Lcase126:
  push 7
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase125:
  push 8
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase124:
  push 9
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase123:
  push 10
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase122:
  push 11
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase121:
  push 12
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase120:
  push 13
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase119:
  push 27
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase118:
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase127:
  mov rax, rbp
  sub rax, 1
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lend117:
  mov rsp, rbp
  pop rbp
  ret
.global new_node
new_node:
  push rbp
  mov rbp, rsp
  sub rsp, 12
  mov [rbp-4], edi
  mov rax, rbp
  sub rax, 12
  push rax
  push 1
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.127
  mov rax, 0
  call calloc
  jmp .L.end.127
.L.call.127:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.127:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global new_binary
new_binary:
  push rbp
  mov rbp, rsp
  sub rsp, 28
  mov [rbp-4], edi
  mov [rbp-12], rsi
  mov [rbp-20], rdx
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.128
  mov rax, 0
  call new_node
  jmp .L.end.128
.L.call.128:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.128:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global new_num
new_num:
  push rbp
  mov rbp, rsp
  sub rsp, 12
  mov [rbp-4], edi
  mov rax, rbp
  sub rax, 12
  push rax
  push 5
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.129
  mov rax, 0
  call new_node
  jmp .L.end.129
.L.call.129:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.129:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global new_string
new_string:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 26
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.130
  mov rax, 0
  call new_node
  jmp .L.end.130
.L.call.130:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.130:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global program
program:
  push rbp
  mov rbp, rsp
  sub rsp, 44
  mov rax, rbp
  sub rax, 4
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin131:
.Lcontinue131:
  mov rax, rsp
  and rax, 15
  jnz .L.call.132
  mov rax, 0
  call at_eof
  jmp .L.end.132
.L.call.132:
  sub rsp, 8
  mov rax, 0
  call at_eof
  add rsp, 8
.L.end.132:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend131
  mov rax, rbp
  sub rax, 12
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 14
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.134
  mov rax, 0
  call consume_kind
  jmp .L.end.134
.L.call.134:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.134:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse133
  mov rax, rsp
  and rax, 15
  jnz .L.call.135
  mov rax, 0
  call define_typedef
  jmp .L.end.135
.L.call.135:
  sub rsp, 8
  mov rax, 0
  call define_typedef
  add rsp, 8
.L.end.135:
  push rax
  push offset .LC58
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.136
  mov rax, 0
  call expect
  jmp .L.end.136
.L.call.136:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.136:
  push rax
  jmp .Lcontinue131
  jmp .Lend133
.Lelse133:
.Lend133:
  push 15
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.138
  mov rax, 0
  call check_kind
  jmp .L.end.138
.L.call.138:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.138:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse137
  mov rax, rsp
  and rax, 15
  jnz .L.call.139
  mov rax, 0
  call define_enum
  jmp .L.end.139
.L.call.139:
  sub rsp, 8
  mov rax, 0
  call define_enum
  add rsp, 8
.L.end.139:
  push rax
  push offset .LC59
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.140
  mov rax, 0
  call expect
  jmp .L.end.140
.L.call.140:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.140:
  push rax
  jmp .Lcontinue131
  jmp .Lend137
.Lelse137:
.Lend137:
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.141
  mov rax, 0
  call read_define_head
  jmp .L.end.141
.L.call.141:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.141:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse142
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.143
  mov rax, 0
  call print_token
  jmp .L.end.143
.L.call.143:
  sub rsp, 8
  mov rax, 0
  call print_token
  add rsp, 8
.L.end.143:
  push rax
  push offset .LC60
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.144
  mov rax, 0
  call error0
  jmp .L.end.144
.L.call.144:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.144:
  push rax
  jmp .Lend142
.Lelse142:
.Lend142:
  push offset .LC61
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.146
  mov rax, 0
  call consume
  jmp .L.end.146
.L.call.146:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.146:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse145
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.147
  mov rax, 0
  call func_def
  jmp .L.end.147
.L.call.147:
  sub rsp, 8
  mov rax, 0
  call func_def
  add rsp, 8
.L.end.147:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse148
  push offset code
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend148
.Lelse148:
  jmp .Lcontinue131
  jmp .Lend148
.Lend148:
  jmp .Lend145
.Lelse145:
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse149
  push offset .LC62
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.151
  mov rax, 0
  call check
  jmp .L.end.151
.L.call.151:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.151:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse150
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset globals
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.152
  mov rax, 0
  call define_variable
  jmp .L.end.152
.L.call.152:
  sub rsp, 8
  mov rax, 0
  call define_variable
  add rsp, 8
.L.end.152:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 12
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset code
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC63
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.153
  mov rax, 0
  call expect
  jmp .L.end.153
.L.call.153:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.153:
  push rax
  jmp .Lend150
.Lelse150:
  mov rax, rsp
  and rax, 15
  jnz .L.call.154
  mov rax, 0
  call define_struct
  jmp .L.end.154
.L.call.154:
  sub rsp, 8
  mov rax, 0
  call define_struct
  add rsp, 8
.L.end.154:
  push rax
  push offset .LC64
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.155
  mov rax, 0
  call expect
  jmp .L.end.155
.L.call.155:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.155:
  push rax
  jmp .Lcontinue131
  jmp .Lend150
.Lend150:
  jmp .Lend149
.Lelse149:
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset globals
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.156
  mov rax, 0
  call define_variable
  jmp .L.end.156
.L.call.156:
  sub rsp, 8
  mov rax, 0
  call define_variable
  add rsp, 8
.L.end.156:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 12
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset code
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC65
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.157
  mov rax, 0
  call expect
  jmp .L.end.157
.L.call.157:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.157:
  push rax
  jmp .Lend149
.Lend149:
  jmp .Lend145
.Lend145:
  mov rax, rbp
  sub rax, 4
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin131
.Lend131:
  push offset code
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rsp, rbp
  pop rbp
  ret
.global define_typedef
define_typedef:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.158
  mov rax, 0
  call read_define_head
  jmp .L.end.158
.L.call.158:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.158:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.159
  mov rax, 0
  call read_define_head
  jmp .L.end.159
.L.call.159:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.159:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.160
  mov rax, 0
  call push_tag
  jmp .L.end.160
.L.call.160:
  sub rsp, 8
  mov rax, 0
  call push_tag
  add rsp, 8
.L.end.160:
  push rax
  push 1
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global define_enum
define_enum:
  push rbp
  mov rbp, rsp
  sub rsp, 36
  push 15
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.162
  mov rax, 0
  call consume_kind
  jmp .L.end.162
.L.call.162:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.162:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse161
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend161
.Lelse161:
.Lend161:
  mov rax, rbp
  sub rax, 8
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.163
  mov rax, 0
  call consume_kind
  jmp .L.end.163
.L.call.163:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.163:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse165
  push offset .LC66
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.166
  mov rax, 0
  call check
  jmp .L.end.166
.L.call.166:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.166:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse165
  push 1
  jmp .Lend165
.Lfalse165:
  push 0
.Lend165:
  pop rax
  cmp rax, 0
  je .Lelse164
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.167
  mov rax, 0
  call find_or_register_tag
  jmp .L.end.167
.L.call.167:
  sub rsp, 8
  mov rax, 0
  call find_or_register_tag
  add rsp, 8
.L.end.167:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse168
  push offset .LC67
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.169
  mov rax, 0
  call error0
  jmp .L.end.169
.L.call.169:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.169:
  push rax
  jmp .Lend168
.Lelse168:
.Lend168:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend164
.Lelse164:
.Lend164:
  push offset .LC68
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.170
  mov rax, 0
  call expect
  jmp .L.end.170
.L.call.170:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.170:
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin171:
.Lcontinue171:
  push 1
  pop rax
  cmp rax, 0
  je .Lend171
  push offset .LC69
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.173
  mov rax, 0
  call consume
  jmp .L.end.173
.L.call.173:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.173:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse172
  jmp .Lend171
  jmp .Lend172
.Lelse172:
.Lend172:
  mov rax, rbp
  sub rax, 28
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.174
  mov rax, 0
  call consume_kind
  jmp .L.end.174
.L.call.174:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.174:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC70
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.176
  mov rax, 0
  call consume
  jmp .L.end.176
.L.call.176:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.176:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse175
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.177
  mov rax, 0
  call expect_number
  jmp .L.end.177
.L.call.177:
  sub rsp, 8
  mov rax, 0
  call expect_number
  add rsp, 8
.L.end.177:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend175
.Lelse175:
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend175
.Lend175:
  mov rax, rbp
  sub rax, 36
  push rax
  push 1
  push 24
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.178
  mov rax, 0
  call calloc
  jmp .L.end.178
.L.call.178:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.178:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.179
  mov rax, 0
  call calloc
  jmp .L.end.179
.L.call.179:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.179:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.180
  mov rax, 0
  call memcpy
  jmp .L.end.180
.L.call.180:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.180:
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push offset enum_vars
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset enum_vars
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC71
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.182
  mov rax, 0
  call consume
  jmp .L.end.182
.L.call.182:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.182:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse181
  jmp .Lend171
  jmp .Lend181
.Lelse181:
.Lend181:
  push offset .LC72
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.183
  mov rax, 0
  call expect
  jmp .L.end.183
.L.call.183:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.183:
  push rax
  jmp .Lbegin171
.Lend171:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse184
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.186
  mov rax, 0
  call int_type
  jmp .L.end.186
.L.call.186:
  sub rsp, 8
  mov rax, 0
  call int_type
  add rsp, 8
.L.end.186:
  push rax
  push 1
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.185
  mov rax, 0
  call push_tag
  jmp .L.end.185
.L.call.185:
  sub rsp, 8
  mov rax, 0
  call push_tag
  add rsp, 8
.L.end.185:
  push rax
  jmp .Lend184
.Lelse184:
.Lend184:
  mov rax, rsp
  and rax, 15
  jnz .L.call.187
  mov rax, 0
  call int_type
  jmp .L.end.187
.L.call.187:
  sub rsp, 8
  mov rax, 0
  call int_type
  add rsp, 8
.L.end.187:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global int_type
int_type:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.188
  mov rax, 0
  call calloc
  jmp .L.end.188
.L.call.188:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.188:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  push 4
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global char_type
char_type:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.189
  mov rax, 0
  call calloc
  jmp .L.end.189
.L.call.189:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.189:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 2
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global ptr_type
ptr_type:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.190
  mov rax, 0
  call calloc
  jmp .L.end.190
.L.call.190:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.190:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 3
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  push 8
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global define_struct
define_struct:
  push rbp
  mov rbp, rsp
  sub rsp, 92
  push 13
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.192
  mov rax, 0
  call consume_kind
  jmp .L.end.192
.L.call.192:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.192:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse191
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend191
.Lelse191:
.Lend191:
  mov rax, rbp
  sub rax, 8
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.193
  mov rax, 0
  call consume_kind
  jmp .L.end.193
.L.call.193:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.193:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse195
  push offset .LC73
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.196
  mov rax, 0
  call check
  jmp .L.end.196
.L.call.196:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.196:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse195
  push 1
  jmp .Lend195
.Lfalse195:
  push 0
.Lend195:
  pop rax
  cmp rax, 0
  je .Lelse194
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.197
  mov rax, 0
  call find_or_register_tag
  jmp .L.end.197
.L.call.197:
  sub rsp, 8
  mov rax, 0
  call find_or_register_tag
  add rsp, 8
.L.end.197:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 5
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend194
.Lelse194:
.Lend194:
  push offset .LC74
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.198
  mov rax, 0
  call expect
  jmp .L.end.198
.L.call.198:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.198:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.199
  mov rax, 0
  call calloc
  jmp .L.end.199
.L.call.199:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.199:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 5
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 68
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin200:
.Lcontinue200:
  push offset .LC75
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.201
  mov rax, 0
  call consume
  jmp .L.end.201
.L.call.201:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.201:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend200
  mov rax, rbp
  sub rax, 80
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.202
  mov rax, 0
  call read_define_head
  jmp .L.end.202
.L.call.202:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.202:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.203
  mov rax, 0
  call read_define_suffix
  jmp .L.end.203
.L.call.203:
  sub rsp, 8
  mov rax, 0
  call read_define_suffix
  add rsp, 8
.L.end.203:
  push rax
  push offset .LC76
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.204
  mov rax, 0
  call expect
  jmp .L.end.204
.L.call.204:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.204:
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  push 1
  push 32
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.205
  mov rax, 0
  call calloc
  jmp .L.end.205
.L.call.205:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.205:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.206
  mov rax, 0
  call calloc
  jmp .L.end.206
.L.call.206:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.206:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.207
  mov rax, 0
  call memcpy
  jmp .L.end.207
.L.call.207:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.207:
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.208
  mov rax, 0
  call get_type_size
  jmp .L.end.208
.L.call.208:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.208:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.209
  mov rax, 0
  call align_to
  jmp .L.end.209
.L.call.209:
  sub rsp, 8
  mov rax, 0
  call align_to
  add rsp, 8
.L.end.209:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse211
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse211
  push 1
  jmp .Lend211
.Lfalse211:
  push 0
.Lend211:
  pop rax
  cmp rax, 0
  je .Lelse210
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend210
.Lelse210:
.Lend210:
  jmp .Lbegin200
.Lend200:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.212
  mov rax, 0
  call align_to
  jmp .L.end.212
.L.call.212:
  sub rsp, 8
  mov rax, 0
  call align_to
  add rsp, 8
.L.end.212:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse213
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.214
  mov rax, 0
  call push_tag
  jmp .L.end.214
.L.call.214:
  sub rsp, 8
  mov rax, 0
  call push_tag
  add rsp, 8
.L.end.214:
  push rax
  jmp .Lend213
.Lelse213:
.Lend213:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global func_def
func_def:
  push rbp
  mov rbp, rsp
  sub rsp, 840
  mov [rbp-8], rdi
  push offset cur_scope_depth
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  push 23
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.215
  mov rax, 0
  call new_node
  jmp .L.end.215
.L.call.215:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.215:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.216
  mov rax, 0
  call calloc
  jmp .L.end.216
.L.call.216:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.216:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.217
  mov rax, 0
  call memcpy
  jmp .L.end.217
.L.call.217:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.217:
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  push 10
  push 8
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.218
  mov rax, 0
  call calloc
  jmp .L.end.218
.L.call.218:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.218:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin219:
  push offset .LC77
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.220
  mov rax, 0
  call consume
  jmp .L.end.220
.L.call.220:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.220:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend219
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse221
  push offset .LC78
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.222
  mov rax, 0
  call expect
  jmp .L.end.222
.L.call.222:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.222:
  push rax
  jmp .Lend221
.Lelse221:
.Lend221:
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.223
  mov rax, 0
  call read_define_head
  jmp .L.end.223
.L.call.223:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.223:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse224
  mov rax, rbp
  sub rax, 828
  push rax
  push 0
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 8
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 16
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 24
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 32
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 40
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 48
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 56
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 64
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 72
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 80
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 88
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 96
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 104
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 112
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 120
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 128
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 136
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 144
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 152
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 160
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 168
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 176
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 184
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 192
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 200
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 208
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 216
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 224
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 232
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 240
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 248
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 256
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 264
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 272
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 280
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 288
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 296
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 304
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 312
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 320
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 328
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 336
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 344
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 352
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 360
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 368
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 376
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 384
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 392
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 400
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 408
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 416
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 424
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 432
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 440
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 448
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 456
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 464
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 472
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 480
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 488
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 496
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 504
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 512
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 520
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 528
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 536
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 544
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 552
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 560
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 568
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 576
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 584
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 592
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 600
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 608
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 616
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 624
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 632
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 640
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 648
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 656
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 664
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 672
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 680
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 688
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 696
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 704
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 712
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 720
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 728
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 736
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 744
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 752
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 760
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 768
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 776
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 784
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push 792
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 828
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.225
  mov rax, 0
  call memcpy
  jmp .L.end.225
.L.call.225:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.225:
  push rax
  push offset .LC79
  mov rax, rbp
  sub rax, 828
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.226
  mov rax, 0
  call error1
  jmp .L.end.226
.L.call.226:
  sub rsp, 8
  mov rax, 0
  call error1
  add rsp, 8
.L.end.226:
  push rax
  jmp .Lend224
.Lelse224:
.Lend224:
  mov rax, rbp
  sub rax, 836
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset locals
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.227
  mov rax, 0
  call define_variable
  jmp .L.end.227
.L.call.227:
  sub rsp, 8
  mov rax, 0
  call define_variable
  add rsp, 8
.L.end.227:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 836
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue219:
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin219
.Lend219:
  push offset .LC80
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.229
  mov rax, 0
  call consume
  jmp .L.end.229
.L.call.229:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.229:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse228
  mov rax, rbp
  sub rax, 840
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset locals
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset cur_scope_depth
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend228
.Lelse228:
.Lend228:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.230
  mov rax, 0
  call block
  jmp .L.end.230
.L.call.230:
  sub rsp, 8
  mov rax, 0
  call block
  add rsp, 8
.L.end.230:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global stmt
stmt:
  push rbp
  mov rbp, rsp
  sub rsp, 148
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 5
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.232
  mov rax, 0
  call consume_kind
  jmp .L.end.232
.L.call.232:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.232:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse231
  mov rax, rbp
  sub rax, 8
  push rax
  push 14
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.233
  mov rax, 0
  call new_node
  jmp .L.end.233
.L.call.233:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.233:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC81
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.235
  mov rax, 0
  call consume
  jmp .L.end.235
.L.call.235:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.235:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse234
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.236
  mov rax, 0
  call expr
  jmp .L.end.236
.L.call.236:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.236:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC82
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.237
  mov rax, 0
  call expect
  jmp .L.end.237
.L.call.237:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.237:
  push rax
  jmp .Lend234
.Lelse234:
.Lend234:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend231
.Lelse231:
.Lend231:
  push 6
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.239
  mov rax, 0
  call consume_kind
  jmp .L.end.239
.L.call.239:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.239:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse238
  mov rax, rbp
  sub rax, 8
  push rax
  push 15
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.240
  mov rax, 0
  call new_node
  jmp .L.end.240
.L.call.240:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.240:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC83
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.241
  mov rax, 0
  call expect
  jmp .L.end.241
.L.call.241:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.241:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.242
  mov rax, 0
  call expr
  jmp .L.end.242
.L.call.242:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.242:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC84
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.243
  mov rax, 0
  call expect
  jmp .L.end.243
.L.call.243:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.243:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.244
  mov rax, 0
  call stmt
  jmp .L.end.244
.L.call.244:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.244:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 7
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.246
  mov rax, 0
  call consume_kind
  jmp .L.end.246
.L.call.246:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.246:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse245
  mov rax, rbp
  sub rax, 16
  push rax
  push 16
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.247
  mov rax, 0
  call new_node
  jmp .L.end.247
.L.call.247:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.247:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.248
  mov rax, 0
  call stmt
  jmp .L.end.248
.L.call.248:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.248:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend245
.Lelse245:
.Lend245:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend238
.Lelse238:
.Lend238:
  push 8
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.250
  mov rax, 0
  call consume_kind
  jmp .L.end.250
.L.call.250:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.250:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse249
  mov rax, rbp
  sub rax, 24
  push rax
  push 17
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.251
  mov rax, 0
  call new_node
  jmp .L.end.251
.L.call.251:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.251:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC85
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.252
  mov rax, 0
  call expect
  jmp .L.end.252
.L.call.252:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.252:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.253
  mov rax, 0
  call expr
  jmp .L.end.253
.L.call.253:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.253:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC86
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.254
  mov rax, 0
  call expect
  jmp .L.end.254
.L.call.254:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.254:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.255
  mov rax, 0
  call stmt
  jmp .L.end.255
.L.call.255:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.255:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend249
.Lelse249:
.Lend249:
  push 18
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.257
  mov rax, 0
  call consume_kind
  jmp .L.end.257
.L.call.257:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.257:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse256
  mov rax, rbp
  sub rax, 32
  push rax
  push 42
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.258
  mov rax, 0
  call new_node
  jmp .L.end.258
.L.call.258:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.258:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC87
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.259
  mov rax, 0
  call expect
  jmp .L.end.259
.L.call.259:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.259:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.260
  mov rax, 0
  call expr
  jmp .L.end.260
.L.call.260:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.260:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC88
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.261
  mov rax, 0
  call expect
  jmp .L.end.261
.L.call.261:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.261:
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset current_switch
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.262
  mov rax, 0
  call stmt
  jmp .L.end.262
.L.call.262:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.262:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset current_switch
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend256
.Lelse256:
.Lend256:
  push 19
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.264
  mov rax, 0
  call consume_kind
  jmp .L.end.264
.L.call.264:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.264:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse263
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse265
  push offset .LC89
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.266
  mov rax, 0
  call error0
  jmp .L.end.266
.L.call.266:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.266:
  push rax
  jmp .Lend265
.Lelse265:
.Lend265:
  mov rax, rbp
  sub rax, 48
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.267
  mov rax, 0
  call consume_kind
  jmp .L.end.267
.L.call.267:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.267:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse268
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.269
  mov rax, 0
  call find_enum_var
  jmp .L.end.269
.L.call.269:
  sub rsp, 8
  mov rax, 0
  call find_enum_var
  add rsp, 8
.L.end.269:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend268
.Lelse268:
.Lend268:
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse270
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.271
  mov rax, 0
  call convert_predefined_keyword_to_num
  jmp .L.end.271
.L.call.271:
  sub rsp, 8
  mov rax, 0
  call convert_predefined_keyword_to_num
  add rsp, 8
.L.end.271:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend270
.Lelse270:
.Lend270:
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse272
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend272
.Lelse272:
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.273
  mov rax, 0
  call expect_number
  jmp .L.end.273
.L.call.273:
  sub rsp, 8
  mov rax, 0
  call expect_number
  add rsp, 8
.L.end.273:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend272
.Lend272:
  push offset .LC90
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.274
  mov rax, 0
  call expect
  jmp .L.end.274
.L.call.274:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.274:
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  push 43
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.275
  mov rax, 0
  call new_node
  jmp .L.end.275
.L.call.275:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.275:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 104
  push rax
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 104
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 104
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend263
.Lelse263:
.Lend263:
  push 20
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.277
  mov rax, 0
  call consume_kind
  jmp .L.end.277
.L.call.277:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.277:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse276
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse278
  push offset .LC91
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.279
  mov rax, 0
  call error0
  jmp .L.end.279
.L.call.279:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.279:
  push rax
  jmp .Lend278
.Lelse278:
.Lend278:
  mov rax, rbp
  sub rax, 84
  push rax
  push 43
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.280
  mov rax, 0
  call new_node
  jmp .L.end.280
.L.call.280:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.280:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC92
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.281
  mov rax, 0
  call expect
  jmp .L.end.281
.L.call.281:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.281:
  push rax
  push offset current_switch
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 112
  push rax
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend276
.Lelse276:
.Lend276:
  push 9
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.283
  mov rax, 0
  call consume_kind
  jmp .L.end.283
.L.call.283:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.283:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse282
  mov rax, rbp
  sub rax, 92
  push rax
  push 18
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.284
  mov rax, 0
  call new_node
  jmp .L.end.284
.L.call.284:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.284:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 100
  push rax
  push 19
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.285
  mov rax, 0
  call new_node
  jmp .L.end.285
.L.call.285:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.285:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 20
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.286
  mov rax, 0
  call new_node
  jmp .L.end.286
.L.call.286:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.286:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC93
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.287
  mov rax, 0
  call expect
  jmp .L.end.287
.L.call.287:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.287:
  push rax
  push offset .LC94
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.289
  mov rax, 0
  call consume
  jmp .L.end.289
.L.call.289:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.289:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse288
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.290
  mov rax, 0
  call stmt
  jmp .L.end.290
.L.call.290:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.290:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend288
.Lelse288:
.Lend288:
  push offset .LC95
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.292
  mov rax, 0
  call consume
  jmp .L.end.292
.L.call.292:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.292:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse291
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.293
  mov rax, 0
  call expr
  jmp .L.end.293
.L.call.293:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.293:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC96
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.294
  mov rax, 0
  call expect
  jmp .L.end.294
.L.call.294:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.294:
  push rax
  jmp .Lend291
.Lelse291:
.Lend291:
  push offset .LC97
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.296
  mov rax, 0
  call consume
  jmp .L.end.296
.L.call.296:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.296:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse295
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.297
  mov rax, 0
  call expr
  jmp .L.end.297
.L.call.297:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.297:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC98
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.298
  mov rax, 0
  call expect
  jmp .L.end.298
.L.call.298:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.298:
  push rax
  jmp .Lend295
.Lelse295:
.Lend295:
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.299
  mov rax, 0
  call stmt
  jmp .L.end.299
.L.call.299:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.299:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend282
.Lelse282:
.Lend282:
  push 16
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.301
  mov rax, 0
  call consume_kind
  jmp .L.end.301
.L.call.301:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.301:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse300
  mov rax, rbp
  sub rax, 116
  push rax
  push 28
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.302
  mov rax, 0
  call new_node
  jmp .L.end.302
.L.call.302:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.302:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC99
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.303
  mov rax, 0
  call expect
  jmp .L.end.303
.L.call.303:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.303:
  push rax
  mov rax, rbp
  sub rax, 116
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend300
.Lelse300:
.Lend300:
  push 17
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.305
  mov rax, 0
  call consume_kind
  jmp .L.end.305
.L.call.305:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.305:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse304
  mov rax, rbp
  sub rax, 124
  push rax
  push 29
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.306
  mov rax, 0
  call new_node
  jmp .L.end.306
.L.call.306:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.306:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC100
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.307
  mov rax, 0
  call expect
  jmp .L.end.307
.L.call.307:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.307:
  push rax
  mov rax, rbp
  sub rax, 124
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend304
.Lelse304:
.Lend304:
  mov rax, rbp
  sub rax, 132
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.308
  mov rax, 0
  call block
  jmp .L.end.308
.L.call.308:
  sub rsp, 8
  mov rax, 0
  call block
  add rsp, 8
.L.end.308:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 132
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse309
  mov rax, rbp
  sub rax, 132
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend309
.Lelse309:
.Lend309:
  mov rax, rbp
  sub rax, 140
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.310
  mov rax, 0
  call read_define_head
  jmp .L.end.310
.L.call.310:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.310:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 140
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse311
  mov rax, rbp
  sub rax, 148
  push rax
  mov rax, rbp
  sub rax, 140
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset locals
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.312
  mov rax, 0
  call define_variable
  jmp .L.end.312
.L.call.312:
  sub rsp, 8
  mov rax, 0
  call define_variable
  add rsp, 8
.L.end.312:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 148
  push rax
  mov rax, rbp
  sub rax, 148
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.313
  mov rax, 0
  call local_variable_init
  jmp .L.end.313
.L.call.313:
  sub rsp, 8
  mov rax, 0
  call local_variable_init
  add rsp, 8
.L.end.313:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC101
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.314
  mov rax, 0
  call expect
  jmp .L.end.314
.L.call.314:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.314:
  push rax
  mov rax, rbp
  sub rax, 148
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend311
.Lelse311:
.Lend311:
  mov rax, rbp
  sub rax, 148
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.315
  mov rax, 0
  call expr
  jmp .L.end.315
.L.call.315:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.315:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC102
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.316
  mov rax, 0
  call expect
  jmp .L.end.316
.L.call.316:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.316:
  push rax
  mov rax, rbp
  sub rax, 148
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global block
block:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov rax, rbp
  sub rax, 8
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC103
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.318
  mov rax, 0
  call consume
  jmp .L.end.318
.L.call.318:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.318:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse317
  mov rax, rbp
  sub rax, 8
  push rax
  push 21
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.319
  mov rax, 0
  call new_node
  jmp .L.end.319
.L.call.319:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.319:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  push 1000
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.320
  mov rax, 0
  call calloc
  jmp .L.end.320
.L.call.320:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.320:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin321:
  push offset .LC104
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.322
  mov rax, 0
  call consume
  jmp .L.end.322
.L.call.322:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.322:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend321
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse323
  push offset .LC105
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.324
  mov rax, 0
  call error0
  jmp .L.end.324
.L.call.324:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.324:
  push rax
  jmp .Lend323
.Lelse323:
.Lend323:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.325
  mov rax, 0
  call stmt
  jmp .L.end.325
.L.call.325:
  sub rsp, 8
  mov rax, 0
  call stmt
  add rsp, 8
.L.end.325:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue321:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin321
.Lend321:
  jmp .Lend317
.Lelse317:
.Lend317:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global expr
expr:
  push rbp
  mov rbp, rsp
  mov rax, rsp
  and rax, 15
  jnz .L.call.326
  mov rax, 0
  call assign
  jmp .L.end.326
.L.call.326:
  sub rsp, 8
  mov rax, 0
  call assign
  add rsp, 8
.L.end.326:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global assign
assign:
  push rbp
  mov rbp, rsp
  sub rsp, 56
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.327
  mov rax, 0
  call conditional
  jmp .L.end.327
.L.call.327:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.327:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC106
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.329
  mov rax, 0
  call consume
  jmp .L.end.329
.L.call.329:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.329:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse328
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.331
  mov rax, 0
  call conditional
  jmp .L.end.331
.L.call.331:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.331:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.330
  mov rax, 0
  call new_binary
  jmp .L.end.330
.L.call.330:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.330:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend328
.Lelse328:
.Lend328:
  push offset .LC107
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.333
  mov rax, 0
  call consume
  jmp .L.end.333
.L.call.333:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.333:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse332
  mov rax, rbp
  sub rax, 16
  push rax
  push 1
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.336
  mov rax, 0
  call conditional
  jmp .L.end.336
.L.call.336:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.336:
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.335
  mov rax, 0
  call ptr_conversion
  jmp .L.end.335
.L.call.335:
  sub rsp, 8
  mov rax, 0
  call ptr_conversion
  add rsp, 8
.L.end.335:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.334
  mov rax, 0
  call new_binary
  jmp .L.end.334
.L.call.334:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.334:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.337
  mov rax, 0
  call new_binary
  jmp .L.end.337
.L.call.337:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.337:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend332
.Lelse332:
.Lend332:
  push offset .LC108
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.339
  mov rax, 0
  call consume
  jmp .L.end.339
.L.call.339:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.339:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse338
  mov rax, rbp
  sub rax, 24
  push rax
  push 2
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.342
  mov rax, 0
  call conditional
  jmp .L.end.342
.L.call.342:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.342:
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.341
  mov rax, 0
  call ptr_conversion
  jmp .L.end.341
.L.call.341:
  sub rsp, 8
  mov rax, 0
  call ptr_conversion
  add rsp, 8
.L.end.341:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.340
  mov rax, 0
  call new_binary
  jmp .L.end.340
.L.call.340:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.340:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.343
  mov rax, 0
  call new_binary
  jmp .L.end.343
.L.call.343:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.343:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend338
.Lelse338:
.Lend338:
  push offset .LC109
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.345
  mov rax, 0
  call consume
  jmp .L.end.345
.L.call.345:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.345:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse344
  mov rax, rbp
  sub rax, 32
  push rax
  push 3
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.346
  mov rax, 0
  call new_node
  jmp .L.end.346
.L.call.346:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.346:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.347
  mov rax, 0
  call conditional
  jmp .L.end.347
.L.call.347:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.347:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.348
  mov rax, 0
  call new_binary
  jmp .L.end.348
.L.call.348:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.348:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend344
.Lelse344:
.Lend344:
  push offset .LC110
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.350
  mov rax, 0
  call consume
  jmp .L.end.350
.L.call.350:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.350:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse349
  mov rax, rbp
  sub rax, 48
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.351
  mov rax, 0
  call new_node
  jmp .L.end.351
.L.call.351:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.351:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.352
  mov rax, 0
  call conditional
  jmp .L.end.352
.L.call.352:
  sub rsp, 8
  mov rax, 0
  call conditional
  add rsp, 8
.L.end.352:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  push 10
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.353
  mov rax, 0
  call new_binary
  jmp .L.end.353
.L.call.353:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.353:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend349
.Lelse349:
.Lend349:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global conditional
conditional:
  push rbp
  mov rbp, rsp
  sub rsp, 48
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.354
  mov rax, 0
  call logor
  jmp .L.end.354
.L.call.354:
  sub rsp, 8
  mov rax, 0
  call logor
  add rsp, 8
.L.end.354:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC111
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.356
  mov rax, 0
  call consume
  jmp .L.end.356
.L.call.356:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.356:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse355
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.357
  mov rax, 0
  call logor
  jmp .L.end.357
.L.call.357:
  sub rsp, 8
  mov rax, 0
  call logor
  add rsp, 8
.L.end.357:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC112
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.358
  mov rax, 0
  call expect
  jmp .L.end.358
.L.call.358:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.358:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.359
  mov rax, 0
  call logor
  jmp .L.end.359
.L.call.359:
  sub rsp, 8
  mov rax, 0
  call logor
  add rsp, 8
.L.end.359:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  push 16
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.360
  mov rax, 0
  call new_node
  jmp .L.end.360
.L.call.360:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.360:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  push 41
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.361
  mov rax, 0
  call new_node
  jmp .L.end.361
.L.call.361:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.361:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend355
.Lelse355:
.Lend355:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global logor
logor:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.362
  mov rax, 0
  call logand
  jmp .L.end.362
.L.call.362:
  sub rsp, 8
  mov rax, 0
  call logand
  add rsp, 8
.L.end.362:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin363:
.Lcontinue363:
  push offset .LC113
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.364
  mov rax, 0
  call consume
  jmp .L.end.364
.L.call.364:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.364:
  push rax
  pop rax
  cmp rax, 0
  je .Lend363
  mov rax, rbp
  sub rax, 8
  push rax
  push 39
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.366
  mov rax, 0
  call logor
  jmp .L.end.366
.L.call.366:
  sub rsp, 8
  mov rax, 0
  call logor
  add rsp, 8
.L.end.366:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.365
  mov rax, 0
  call new_binary
  jmp .L.end.365
.L.call.365:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.365:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin363
.Lend363:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global logand
logand:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.367
  mov rax, 0
  call bitor
  jmp .L.end.367
.L.call.367:
  sub rsp, 8
  mov rax, 0
  call bitor
  add rsp, 8
.L.end.367:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin368:
.Lcontinue368:
  push offset .LC114
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.369
  mov rax, 0
  call consume
  jmp .L.end.369
.L.call.369:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.369:
  push rax
  pop rax
  cmp rax, 0
  je .Lend368
  mov rax, rbp
  sub rax, 8
  push rax
  push 40
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.371
  mov rax, 0
  call logand
  jmp .L.end.371
.L.call.371:
  sub rsp, 8
  mov rax, 0
  call logand
  add rsp, 8
.L.end.371:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.370
  mov rax, 0
  call new_binary
  jmp .L.end.370
.L.call.370:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.370:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin368
.Lend368:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global bitor
bitor:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.372
  mov rax, 0
  call bitxor
  jmp .L.end.372
.L.call.372:
  sub rsp, 8
  mov rax, 0
  call bitxor
  add rsp, 8
.L.end.372:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin373:
.Lcontinue373:
  push offset .LC115
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.374
  mov rax, 0
  call consume
  jmp .L.end.374
.L.call.374:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.374:
  push rax
  pop rax
  cmp rax, 0
  je .Lend373
  mov rax, rbp
  sub rax, 8
  push rax
  push 36
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.376
  mov rax, 0
  call bitxor
  jmp .L.end.376
.L.call.376:
  sub rsp, 8
  mov rax, 0
  call bitxor
  add rsp, 8
.L.end.376:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.375
  mov rax, 0
  call new_binary
  jmp .L.end.375
.L.call.375:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.375:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin373
.Lend373:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global bitxor
bitxor:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.377
  mov rax, 0
  call bitand
  jmp .L.end.377
.L.call.377:
  sub rsp, 8
  mov rax, 0
  call bitand
  add rsp, 8
.L.end.377:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin378:
.Lcontinue378:
  push offset .LC116
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.379
  mov rax, 0
  call consume
  jmp .L.end.379
.L.call.379:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.379:
  push rax
  pop rax
  cmp rax, 0
  je .Lend378
  mov rax, rbp
  sub rax, 8
  push rax
  push 37
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.381
  mov rax, 0
  call bitxor
  jmp .L.end.381
.L.call.381:
  sub rsp, 8
  mov rax, 0
  call bitxor
  add rsp, 8
.L.end.381:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.380
  mov rax, 0
  call new_binary
  jmp .L.end.380
.L.call.380:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.380:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin378
.Lend378:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global bitand
bitand:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.382
  mov rax, 0
  call equality
  jmp .L.end.382
.L.call.382:
  sub rsp, 8
  mov rax, 0
  call equality
  add rsp, 8
.L.end.382:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin383:
.Lcontinue383:
  push offset .LC117
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.384
  mov rax, 0
  call consume
  jmp .L.end.384
.L.call.384:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.384:
  push rax
  pop rax
  cmp rax, 0
  je .Lend383
  mov rax, rbp
  sub rax, 8
  push rax
  push 38
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.386
  mov rax, 0
  call equality
  jmp .L.end.386
.L.call.386:
  sub rsp, 8
  mov rax, 0
  call equality
  add rsp, 8
.L.end.386:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.385
  mov rax, 0
  call new_binary
  jmp .L.end.385
.L.call.385:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.385:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin383
.Lend383:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global equality
equality:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.387
  mov rax, 0
  call relational
  jmp .L.end.387
.L.call.387:
  sub rsp, 8
  mov rax, 0
  call relational
  add rsp, 8
.L.end.387:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin388:
  push 1
  pop rax
  cmp rax, 0
  je .Lend388
  push offset .LC118
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.390
  mov rax, 0
  call consume
  jmp .L.end.390
.L.call.390:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.390:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse389
  mov rax, rbp
  sub rax, 8
  push rax
  push 6
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.392
  mov rax, 0
  call relational
  jmp .L.end.392
.L.call.392:
  sub rsp, 8
  mov rax, 0
  call relational
  add rsp, 8
.L.end.392:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.391
  mov rax, 0
  call new_binary
  jmp .L.end.391
.L.call.391:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.391:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend389
.Lelse389:
  push offset .LC119
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.394
  mov rax, 0
  call consume
  jmp .L.end.394
.L.call.394:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.394:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse393
  mov rax, rbp
  sub rax, 8
  push rax
  push 7
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.396
  mov rax, 0
  call relational
  jmp .L.end.396
.L.call.396:
  sub rsp, 8
  mov rax, 0
  call relational
  add rsp, 8
.L.end.396:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.395
  mov rax, 0
  call new_binary
  jmp .L.end.395
.L.call.395:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.395:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend393
.Lelse393:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend393
.Lend393:
  jmp .Lend389
.Lend389:
.Lcontinue388:
  jmp .Lbegin388
.Lend388:
  mov rsp, rbp
  pop rbp
  ret
.global relational
relational:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.397
  mov rax, 0
  call add
  jmp .L.end.397
.L.call.397:
  sub rsp, 8
  mov rax, 0
  call add
  add rsp, 8
.L.end.397:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin398:
  push 1
  pop rax
  cmp rax, 0
  je .Lend398
  push offset .LC120
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.400
  mov rax, 0
  call consume
  jmp .L.end.400
.L.call.400:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.400:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse399
  mov rax, rbp
  sub rax, 8
  push rax
  push 8
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.402
  mov rax, 0
  call add
  jmp .L.end.402
.L.call.402:
  sub rsp, 8
  mov rax, 0
  call add
  add rsp, 8
.L.end.402:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.401
  mov rax, 0
  call new_binary
  jmp .L.end.401
.L.call.401:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.401:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend399
.Lelse399:
  push offset .LC121
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.404
  mov rax, 0
  call consume
  jmp .L.end.404
.L.call.404:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.404:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse403
  mov rax, rbp
  sub rax, 8
  push rax
  push 9
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.406
  mov rax, 0
  call add
  jmp .L.end.406
.L.call.406:
  sub rsp, 8
  mov rax, 0
  call add
  add rsp, 8
.L.end.406:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.405
  mov rax, 0
  call new_binary
  jmp .L.end.405
.L.call.405:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.405:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend403
.Lelse403:
  push offset .LC122
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.408
  mov rax, 0
  call consume
  jmp .L.end.408
.L.call.408:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.408:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse407
  mov rax, rbp
  sub rax, 8
  push rax
  push 8
  mov rax, rsp
  and rax, 15
  jnz .L.call.410
  mov rax, 0
  call add
  jmp .L.end.410
.L.call.410:
  sub rsp, 8
  mov rax, 0
  call add
  add rsp, 8
.L.end.410:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.409
  mov rax, 0
  call new_binary
  jmp .L.end.409
.L.call.409:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.409:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend407
.Lelse407:
  push offset .LC123
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.412
  mov rax, 0
  call consume
  jmp .L.end.412
.L.call.412:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.412:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse411
  mov rax, rbp
  sub rax, 8
  push rax
  push 9
  mov rax, rsp
  and rax, 15
  jnz .L.call.414
  mov rax, 0
  call add
  jmp .L.end.414
.L.call.414:
  sub rsp, 8
  mov rax, 0
  call add
  add rsp, 8
.L.end.414:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.413
  mov rax, 0
  call new_binary
  jmp .L.end.413
.L.call.413:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.413:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend411
.Lelse411:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend411
.Lend411:
  jmp .Lend407
.Lend407:
  jmp .Lend403
.Lend403:
  jmp .Lend399
.Lend399:
.Lcontinue398:
  jmp .Lbegin398
.Lend398:
  mov rsp, rbp
  pop rbp
  ret
.global add
add:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.415
  mov rax, 0
  call mul
  jmp .L.end.415
.L.call.415:
  sub rsp, 8
  mov rax, 0
  call mul
  add rsp, 8
.L.end.415:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin416:
  push 1
  pop rax
  cmp rax, 0
  je .Lend416
  push offset .LC124
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.418
  mov rax, 0
  call consume
  jmp .L.end.418
.L.call.418:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.418:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse417
  mov rax, rbp
  sub rax, 8
  push rax
  push 1
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.421
  mov rax, 0
  call mul
  jmp .L.end.421
.L.call.421:
  sub rsp, 8
  mov rax, 0
  call mul
  add rsp, 8
.L.end.421:
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.420
  mov rax, 0
  call ptr_conversion
  jmp .L.end.420
.L.call.420:
  sub rsp, 8
  mov rax, 0
  call ptr_conversion
  add rsp, 8
.L.end.420:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.419
  mov rax, 0
  call new_binary
  jmp .L.end.419
.L.call.419:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.419:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend417
.Lelse417:
  push offset .LC125
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.423
  mov rax, 0
  call consume
  jmp .L.end.423
.L.call.423:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.423:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse422
  mov rax, rbp
  sub rax, 8
  push rax
  push 2
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.426
  mov rax, 0
  call mul
  jmp .L.end.426
.L.call.426:
  sub rsp, 8
  mov rax, 0
  call mul
  add rsp, 8
.L.end.426:
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.425
  mov rax, 0
  call ptr_conversion
  jmp .L.end.425
.L.call.425:
  sub rsp, 8
  mov rax, 0
  call ptr_conversion
  add rsp, 8
.L.end.425:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.424
  mov rax, 0
  call new_binary
  jmp .L.end.424
.L.call.424:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.424:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend422
.Lelse422:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend422
.Lend422:
  jmp .Lend417
.Lend417:
.Lcontinue416:
  jmp .Lbegin416
.Lend416:
  mov rsp, rbp
  pop rbp
  ret
.global ptr_conversion
ptr_conversion:
  push rbp
  mov rbp, rsp
  sub rsp, 20
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse428
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse428
  push 1
  jmp .Lend428
.Lfalse428:
  push 0
.Lend428:
  pop rax
  cmp rax, 0
  je .Lelse427
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.429
  mov rax, 0
  call get_type_size
  jmp .L.end.429
.L.call.429:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.429:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 3
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.431
  mov rax, 0
  call new_num
  jmp .L.end.431
.L.call.431:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.431:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.430
  mov rax, 0
  call new_binary
  jmp .L.end.430
.L.call.430:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.430:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend427
.Lelse427:
.Lend427:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global mul
mul:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.432
  mov rax, 0
  call unary
  jmp .L.end.432
.L.call.432:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.432:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin433:
  push 1
  pop rax
  cmp rax, 0
  je .Lend433
  push offset .LC126
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.435
  mov rax, 0
  call consume
  jmp .L.end.435
.L.call.435:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.435:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse434
  mov rax, rbp
  sub rax, 8
  push rax
  push 3
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.437
  mov rax, 0
  call unary
  jmp .L.end.437
.L.call.437:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.437:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.436
  mov rax, 0
  call new_binary
  jmp .L.end.436
.L.call.436:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.436:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend434
.Lelse434:
  push offset .LC127
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.439
  mov rax, 0
  call consume
  jmp .L.end.439
.L.call.439:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.439:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse438
  mov rax, rbp
  sub rax, 8
  push rax
  push 4
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.441
  mov rax, 0
  call unary
  jmp .L.end.441
.L.call.441:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.441:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.440
  mov rax, 0
  call new_binary
  jmp .L.end.440
.L.call.440:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.440:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend438
.Lelse438:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend438
.Lend438:
  jmp .Lend434
.Lend434:
.Lcontinue433:
  jmp .Lbegin433
.Lend433:
  mov rsp, rbp
  pop rbp
  ret
.global unary
unary:
  push rbp
  mov rbp, rsp
  sub rsp, 80
  push offset .LC128
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.443
  mov rax, 0
  call consume
  jmp .L.end.443
.L.call.443:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.443:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse442
  push 30
  mov rax, rsp
  and rax, 15
  jnz .L.call.445
  mov rax, 0
  call unary
  jmp .L.end.445
.L.call.445:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.445:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.444
  mov rax, 0
  call new_binary
  jmp .L.end.444
.L.call.444:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.444:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend442
.Lelse442:
.Lend442:
  push offset .LC129
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.447
  mov rax, 0
  call consume
  jmp .L.end.447
.L.call.447:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.447:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse446
  push 31
  mov rax, rsp
  and rax, 15
  jnz .L.call.449
  mov rax, 0
  call unary
  jmp .L.end.449
.L.call.449:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.449:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.448
  mov rax, 0
  call new_binary
  jmp .L.end.448
.L.call.448:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.448:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend446
.Lelse446:
.Lend446:
  push offset .LC130
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.451
  mov rax, 0
  call consume
  jmp .L.end.451
.L.call.451:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.451:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse450
  mov rax, rsp
  and rax, 15
  jnz .L.call.452
  mov rax, 0
  call unary
  jmp .L.end.452
.L.call.452:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.452:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend450
.Lelse450:
.Lend450:
  push offset .LC131
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.454
  mov rax, 0
  call consume
  jmp .L.end.454
.L.call.454:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.454:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse453
  push 2
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.456
  mov rax, 0
  call new_num
  jmp .L.end.456
.L.call.456:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.456:
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.457
  mov rax, 0
  call unary
  jmp .L.end.457
.L.call.457:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.457:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.455
  mov rax, 0
  call new_binary
  jmp .L.end.455
.L.call.455:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.455:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend453
.Lelse453:
.Lend453:
  push offset .LC132
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.459
  mov rax, 0
  call consume
  jmp .L.end.459
.L.call.459:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.459:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse458
  push 25
  mov rax, rsp
  and rax, 15
  jnz .L.call.461
  mov rax, 0
  call unary
  jmp .L.end.461
.L.call.461:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.461:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.460
  mov rax, 0
  call new_binary
  jmp .L.end.460
.L.call.460:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.460:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend458
.Lelse458:
.Lend458:
  push offset .LC133
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.463
  mov rax, 0
  call consume
  jmp .L.end.463
.L.call.463:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.463:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse462
  push 24
  mov rax, rsp
  and rax, 15
  jnz .L.call.465
  mov rax, 0
  call unary
  jmp .L.end.465
.L.call.465:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.465:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.464
  mov rax, 0
  call new_binary
  jmp .L.end.464
.L.call.464:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.464:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend462
.Lelse462:
.Lend462:
  push offset .LC134
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.467
  mov rax, 0
  call consume
  jmp .L.end.467
.L.call.467:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.467:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse466
  push 34
  mov rax, rsp
  and rax, 15
  jnz .L.call.469
  mov rax, 0
  call unary
  jmp .L.end.469
.L.call.469:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.469:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.468
  mov rax, 0
  call new_binary
  jmp .L.end.468
.L.call.468:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.468:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend466
.Lelse466:
.Lend466:
  push offset .LC135
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.471
  mov rax, 0
  call consume
  jmp .L.end.471
.L.call.471:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.471:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse470
  push 35
  mov rax, rsp
  and rax, 15
  jnz .L.call.473
  mov rax, 0
  call unary
  jmp .L.end.473
.L.call.473:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.473:
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.472
  mov rax, 0
  call new_binary
  jmp .L.end.472
.L.call.472:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.472:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend470
.Lelse470:
.Lend470:
  push 11
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.475
  mov rax, 0
  call consume_kind
  jmp .L.end.475
.L.call.475:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.475:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse474
  push offset .LC136
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.479
  mov rax, 0
  call check
  jmp .L.end.479
.L.call.479:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.479:
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse478
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse478
  push 1
  jmp .Lend478
.Lfalse478:
  push 0
.Lend478:
  pop rax
  cmp rax, 0
  jne .Ltrue477
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.480
  mov rax, 0
  call check_kind
  jmp .L.end.480
.L.call.480:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.480:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue477
  push 0
  jmp .Lend477
.Ltrue477:
  push 1
.Lend477:
  pop rax
  cmp rax, 0
  je .Lelse476
  mov rax, rbp
  sub rax, 4
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC137
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.482
  mov rax, 0
  call consume
  jmp .L.end.482
.L.call.482:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.482:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse481
  mov rax, rbp
  sub rax, 4
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend481
.Lelse481:
.Lend481:
  mov rax, rbp
  sub rax, 12
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.483
  mov rax, 0
  call calloc
  jmp .L.end.483
.L.call.483:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.483:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.484
  mov rax, 0
  call memcpy
  jmp .L.end.484
.L.call.484:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.484:
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.485
  mov rax, 0
  call consume_kind
  jmp .L.end.485
.L.call.485:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.485:
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC138
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.487
  mov rax, 0
  call strcmp
  jmp .L.end.487
.L.call.487:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.487:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse486
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.490
  mov rax, 0
  call int_type
  jmp .L.end.490
.L.call.490:
  sub rsp, 8
  mov rax, 0
  call int_type
  add rsp, 8
.L.end.490:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.489
  mov rax, 0
  call get_type_size
  jmp .L.end.489
.L.call.489:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.489:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.488
  mov rax, 0
  call new_num
  jmp .L.end.488
.L.call.488:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.488:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend486
.Lelse486:
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC139
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.492
  mov rax, 0
  call strcmp
  jmp .L.end.492
.L.call.492:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.492:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse491
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.495
  mov rax, 0
  call char_type
  jmp .L.end.495
.L.call.495:
  sub rsp, 8
  mov rax, 0
  call char_type
  add rsp, 8
.L.end.495:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.494
  mov rax, 0
  call get_type_size
  jmp .L.end.494
.L.call.494:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.494:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.493
  mov rax, 0
  call new_num
  jmp .L.end.493
.L.call.493:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.493:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend491
.Lelse491:
  push offset .LC140
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.496
  mov rax, 0
  call error1
  jmp .L.end.496
.L.call.496:
  sub rsp, 8
  mov rax, 0
  call error1
  add rsp, 8
.L.end.496:
  push rax
  jmp .Lend491
.Lend491:
  jmp .Lend486
.Lend486:
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse497
  push offset .LC141
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.498
  mov rax, 0
  call consume
  jmp .L.end.498
.L.call.498:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.498:
  push rax
  jmp .Lend497
.Lelse497:
.Lend497:
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend476
.Lelse476:
.Lend476:
  push offset .LC142
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.502
  mov rax, 0
  call check
  jmp .L.end.502
.L.call.502:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.502:
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse501
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 15
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue503
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 13
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue503
  push 0
  jmp .Lend503
.Ltrue503:
  push 1
.Lend503:
  pop rax
  cmp rax, 0
  je .Lfalse501
  push 1
  jmp .Lend501
.Lfalse501:
  push 0
.Lend501:
  pop rax
  cmp rax, 0
  jne .Ltrue500
  push 15
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.505
  mov rax, 0
  call check_kind
  jmp .L.end.505
.L.call.505:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.505:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue504
  push 13
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.506
  mov rax, 0
  call check_kind
  jmp .L.end.506
.L.call.506:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.506:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue504
  push 0
  jmp .Lend504
.Ltrue504:
  push 1
.Lend504:
  pop rax
  cmp rax, 0
  jne .Ltrue500
  push 0
  jmp .Lend500
.Ltrue500:
  push 1
.Lend500:
  pop rax
  cmp rax, 0
  je .Lelse499
  mov rax, rbp
  sub rax, 24
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC143
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.508
  mov rax, 0
  call consume
  jmp .L.end.508
.L.call.508:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.508:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse507
  mov rax, rbp
  sub rax, 24
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend507
.Lelse507:
.Lend507:
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.509
  mov rax, 0
  call read_define_head
  jmp .L.end.509
.L.call.509:
  sub rsp, 8
  mov rax, 0
  call read_define_head
  add rsp, 8
.L.end.509:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.511
  mov rax, 0
  call get_type_size
  jmp .L.end.511
.L.call.511:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.511:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.510
  mov rax, 0
  call new_num
  jmp .L.end.510
.L.call.510:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.510:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse512
  push offset .LC144
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.513
  mov rax, 0
  call consume
  jmp .L.end.513
.L.call.513:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.513:
  push rax
  jmp .Lend512
.Lelse512:
.Lend512:
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend499
.Lelse499:
.Lend499:
  push offset .LC145
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.517
  mov rax, 0
  call check
  jmp .L.end.517
.L.call.517:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.517:
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse516
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse516
  push 1
  jmp .Lend516
.Lfalse516:
  push 0
.Lend516:
  pop rax
  cmp rax, 0
  jne .Ltrue515
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.518
  mov rax, 0
  call check_kind
  jmp .L.end.518
.L.call.518:
  sub rsp, 8
  mov rax, 0
  call check_kind
  add rsp, 8
.L.end.518:
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue515
  push 0
  jmp .Lend515
.Ltrue515:
  push 1
.Lend515:
  pop rax
  cmp rax, 0
  je .Lelse514
  mov rax, rbp
  sub rax, 44
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC146
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.520
  mov rax, 0
  call check
  jmp .L.end.520
.L.call.520:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.520:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse519
  mov rax, rbp
  sub rax, 52
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.521
  mov rax, 0
  call find_tag
  jmp .L.end.521
.L.call.521:
  sub rsp, 8
  mov rax, 0
  call find_tag
  add rsp, 8
.L.end.521:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse522
  push offset .LC147
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.523
  mov rax, 0
  call consume
  jmp .L.end.523
.L.call.523:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.523:
  push rax
  jmp .Lend522
.Lelse522:
.Lend522:
  mov rax, rbp
  sub rax, 44
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend519
.Lelse519:
  mov rax, rbp
  sub rax, 52
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.524
  mov rax, 0
  call find_tag
  jmp .L.end.524
.L.call.524:
  sub rsp, 8
  mov rax, 0
  call find_tag
  add rsp, 8
.L.end.524:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend519
.Lend519:
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse525
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse527
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse527
  push 1
  jmp .Lend527
.Lfalse527:
  push 0
.Lend527:
  pop rax
  cmp rax, 0
  je .Lelse526
  push offset .LC148
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.528
  mov rax, 0
  call error0
  jmp .L.end.528
.L.call.528:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.528:
  push rax
  jmp .Lend526
.Lelse526:
.Lend526:
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.529
  mov rax, 0
  call consume_kind
  jmp .L.end.529
.L.call.529:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.529:
  push rax
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC149
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.531
  mov rax, 0
  call consume
  jmp .L.end.531
.L.call.531:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.531:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse530
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.534
  mov rax, 0
  call ptr_type
  jmp .L.end.534
.L.call.534:
  sub rsp, 8
  mov rax, 0
  call ptr_type
  add rsp, 8
.L.end.534:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.533
  mov rax, 0
  call get_type_size
  jmp .L.end.533
.L.call.533:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.533:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.532
  mov rax, 0
  call new_num
  jmp .L.end.532
.L.call.532:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.532:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend530
.Lelse530:
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.536
  mov rax, 0
  call get_type_size
  jmp .L.end.536
.L.call.536:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.536:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.535
  mov rax, 0
  call new_num
  jmp .L.end.535
.L.call.535:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.535:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend530
.Lend530:
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse537
  push offset .LC150
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.538
  mov rax, 0
  call consume
  jmp .L.end.538
.L.call.538:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.538:
  push rax
  jmp .Lend537
.Lelse537:
.Lend537:
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend525
.Lelse525:
.Lend525:
  jmp .Lend514
.Lelse514:
.Lend514:
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.539
  mov rax, 0
  call unary
  jmp .L.end.539
.L.call.539:
  sub rsp, 8
  mov rax, 0
  call unary
  add rsp, 8
.L.end.539:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse540
  mov rax, rbp
  sub rax, 72
  push rax
  push 4
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend540
.Lelse540:
  mov rax, rbp
  sub rax, 80
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.541
  mov rax, 0
  call get_type
  jmp .L.end.541
.L.call.541:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.541:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.542
  mov rax, 0
  call get_type_size
  jmp .L.end.542
.L.call.542:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.542:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend540
.Lend540:
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.543
  mov rax, 0
  call new_num
  jmp .L.end.543
.L.call.543:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.543:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend474
.Lelse474:
.Lend474:
  mov rax, rsp
  and rax, 15
  jnz .L.call.544
  mov rax, 0
  call primary
  jmp .L.end.544
.L.call.544:
  sub rsp, 8
  mov rax, 0
  call primary
  add rsp, 8
.L.end.544:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global primary
primary:
  push rbp
  mov rbp, rsp
  sub rsp, 60
  push offset .LC151
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.546
  mov rax, 0
  call consume
  jmp .L.end.546
.L.call.546:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.546:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse545
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.547
  mov rax, 0
  call expr
  jmp .L.end.547
.L.call.547:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.547:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC152
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.548
  mov rax, 0
  call expect
  jmp .L.end.548
.L.call.548:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.548:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend545
.Lelse545:
.Lend545:
  mov rax, rbp
  sub rax, 16
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.549
  mov rax, 0
  call consume_kind
  jmp .L.end.549
.L.call.549:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.549:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse550
  push offset .LC153
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.552
  mov rax, 0
  call consume
  jmp .L.end.552
.L.call.552:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.552:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse551
  mov rax, rbp
  sub rax, 24
  push rax
  push 22
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.553
  mov rax, 0
  call new_node
  jmp .L.end.553
.L.call.553:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.553:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.554
  mov rax, 0
  call calloc
  jmp .L.end.554
.L.call.554:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.554:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.555
  mov rax, 0
  call memcpy
  jmp .L.end.555
.L.call.555:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.555:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  push 10
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.556
  mov rax, 0
  call calloc
  jmp .L.end.556
.L.call.556:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.556:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin557:
  push offset .LC154
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.558
  mov rax, 0
  call consume
  jmp .L.end.558
.L.call.558:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.558:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend557
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse559
  push offset .LC155
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.560
  mov rax, 0
  call expect
  jmp .L.end.560
.L.call.560:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.560:
  push rax
  jmp .Lend559
.Lelse559:
.Lend559:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.561
  mov rax, 0
  call expr
  jmp .L.end.561
.L.call.561:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.561:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue557:
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin557
.Lend557:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend551
.Lelse551:
.Lend551:
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.562
  mov rax, 0
  call find_enum_var
  jmp .L.end.562
.L.call.562:
  sub rsp, 8
  mov rax, 0
  call find_enum_var
  add rsp, 8
.L.end.562:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse563
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend563
.Lelse563:
.Lend563:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.564
  mov rax, 0
  call variable
  jmp .L.end.564
.L.call.564:
  sub rsp, 8
  mov rax, 0
  call variable
  add rsp, 8
.L.end.564:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend550
.Lelse550:
.Lend550:
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.565
  mov rax, 0
  call convert_predefined_keyword_to_num
  jmp .L.end.565
.L.call.565:
  sub rsp, 8
  mov rax, 0
  call convert_predefined_keyword_to_num
  add rsp, 8
.L.end.565:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse566
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend566
.Lelse566:
.Lend566:
  mov rax, rbp
  sub rax, 16
  push rax
  push 12
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.568
  mov rax, 0
  call consume_kind
  jmp .L.end.568
.L.call.568:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.568:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  pop rax
  cmp rax, 0
  je .Lelse567
  mov rax, rbp
  sub rax, 52
  push rax
  push 1
  push 24
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.569
  mov rax, 0
  call calloc
  jmp .L.end.569
.L.call.569:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.569:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.570
  mov rax, 0
  call calloc
  jmp .L.end.570
.L.call.570:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.570:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.571
  mov rax, 0
  call memcpy
  jmp .L.end.571
.L.call.571:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.571:
  push rax
  push offset strings
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse572
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  push offset strings
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend572
.Lelse572:
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend572
.Lend572:
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push offset strings
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.573
  mov rax, 0
  call new_string
  jmp .L.end.573
.L.call.573:
  sub rsp, 8
  mov rax, 0
  call new_string
  add rsp, 8
.L.end.573:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset strings
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend567
.Lelse567:
.Lend567:
  mov rax, rsp
  and rax, 15
  jnz .L.call.575
  mov rax, 0
  call expect_number
  jmp .L.end.575
.L.call.575:
  sub rsp, 8
  mov rax, 0
  call expect_number
  add rsp, 8
.L.end.575:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.574
  mov rax, 0
  call new_num
  jmp .L.end.574
.L.call.574:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.574:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global variable
variable:
  push rbp
  mov rbp, rsp
  sub rsp, 884
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 11
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.576
  mov rax, 0
  call new_node
  jmp .L.end.576
.L.call.576:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.576:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.577
  mov rax, 0
  call find_variable
  jmp .L.end.577
.L.call.577:
  sub rsp, 8
  mov rax, 0
  call find_variable
  add rsp, 8
.L.end.577:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse578
  mov rax, rbp
  sub rax, 824
  push rax
  push 0
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 8
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 16
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 24
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 32
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 40
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 48
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 56
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 64
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 72
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 80
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 88
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 96
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 104
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 112
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 120
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 128
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 136
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 144
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 152
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 160
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 168
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 176
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 184
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 192
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 200
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 208
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 216
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 224
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 232
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 240
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 248
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 256
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 264
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 272
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 280
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 288
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 296
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 304
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 312
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 320
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 328
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 336
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 344
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 352
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 360
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 368
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 376
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 384
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 392
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 400
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 408
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 416
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 424
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 432
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 440
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 448
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 456
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 464
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 472
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 480
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 488
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 496
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 504
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 512
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 520
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 528
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 536
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 544
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 552
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 560
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 568
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 576
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 584
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 592
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 600
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 608
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 616
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 624
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 632
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 640
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 648
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 656
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 664
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 672
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 680
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 688
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 696
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 704
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 712
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 720
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 728
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 736
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 744
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 752
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 760
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 768
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 776
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 784
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  push 792
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 824
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.579
  mov rax, 0
  call memcpy
  jmp .L.end.579
.L.call.579:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.579:
  push rax
  push offset .LC156
  mov rax, rbp
  sub rax, 824
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.580
  mov rax, 0
  call printf
  jmp .L.end.580
.L.call.580:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.580:
  push rax
  push offset .LC157
  mov rax, rbp
  sub rax, 824
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.581
  mov rax, 0
  call error1
  jmp .L.end.581
.L.call.581:
  sub rsp, 8
  mov rax, 0
  call error1
  add rsp, 8
.L.end.581:
  push rax
  jmp .Lend578
.Lelse578:
.Lend578:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse582
  push 11
  jmp .Lend582
.Lelse582:
  push 13
  jmp .Lend582
.Lend582:
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.583
  mov rax, 0
  call calloc
  jmp .L.end.583
.L.call.583:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.583:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.584
  mov rax, 0
  call memcpy
  jmp .L.end.584
.L.call.584:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.584:
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 840
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin585:
.Lcontinue585:
  push 1
  pop rax
  cmp rax, 0
  je .Lend585
  mov rax, rbp
  sub rax, 844
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin586:
.Lcontinue586:
  push offset .LC158
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.587
  mov rax, 0
  call consume
  jmp .L.end.587
.L.call.587:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.587:
  push rax
  pop rax
  cmp rax, 0
  je .Lend586
  mov rax, rbp
  sub rax, 844
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 852
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.588
  mov rax, 0
  call new_node
  jmp .L.end.588
.L.call.588:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.588:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 852
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 860
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.589
  mov rax, 0
  call expr
  jmp .L.end.589
.L.call.589:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.589:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 852
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 3
  mov rax, rbp
  sub rax, 860
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 840
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.592
  mov rax, 0
  call get_type_size
  jmp .L.end.592
.L.call.592:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.592:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.591
  mov rax, 0
  call new_num
  jmp .L.end.591
.L.call.591:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.591:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.590
  mov rax, 0
  call new_binary
  jmp .L.end.590
.L.call.590:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.590:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 840
  push rax
  mov rax, rbp
  sub rax, 840
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 852
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 840
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC159
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.593
  mov rax, 0
  call expect
  jmp .L.end.593
.L.call.593:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.593:
  push rax
  jmp .Lbegin586
.Lend586:
  mov rax, rbp
  sub rax, 844
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse594
  mov rax, rbp
  sub rax, 868
  push rax
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.595
  mov rax, 0
  call new_node
  jmp .L.end.595
.L.call.595:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.595:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 868
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 868
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 840
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue585
  jmp .Lend594
.Lelse594:
.Lend594:
  push offset .LC160
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.597
  mov rax, 0
  call consume
  jmp .L.end.597
.L.call.597:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.597:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse596
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.598
  mov rax, 0
  call struct_ref
  jmp .L.end.598
.L.call.598:
  sub rsp, 8
  mov rax, 0
  call struct_ref
  add rsp, 8
.L.end.598:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 840
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue585
  jmp .Lend596
.Lelse596:
.Lend596:
  push offset .LC161
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.600
  mov rax, 0
  call consume
  jmp .L.end.600
.L.call.600:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.600:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse599
  mov rax, rbp
  sub rax, 876
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 884
  push rax
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.601
  mov rax, 0
  call new_node
  jmp .L.end.601
.L.call.601:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.601:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 884
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 884
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 876
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 884
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.602
  mov rax, 0
  call struct_ref
  jmp .L.end.602
.L.call.602:
  sub rsp, 8
  mov rax, 0
  call struct_ref
  add rsp, 8
.L.end.602:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 840
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue585
  jmp .Lend599
.Lelse599:
.Lend599:
  push offset .LC162
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.604
  mov rax, 0
  call consume
  jmp .L.end.604
.L.call.604:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.604:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse603
  mov rax, rbp
  sub rax, 16
  push rax
  push 32
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.605
  mov rax, 0
  call new_binary
  jmp .L.end.605
.L.call.605:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.605:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue585
  jmp .Lend603
.Lelse603:
.Lend603:
  push offset .LC163
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.607
  mov rax, 0
  call consume
  jmp .L.end.607
.L.call.607:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.607:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse606
  mov rax, rbp
  sub rax, 16
  push rax
  push 33
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.608
  mov rax, 0
  call new_binary
  jmp .L.end.608
.L.call.608:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.608:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  mov rax, rbp
  sub rax, 832
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lcontinue585
  jmp .Lend606
.Lelse606:
.Lend606:
  jmp .Lend585
  jmp .Lbegin585
.Lend585:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global define_variable
define_variable:
  push rbp
  mov rbp, rsp
  sub rsp, 72
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse609
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.610
  mov rax, 0
  call print_token
  jmp .L.end.610
.L.call.610:
  sub rsp, 8
  mov rax, 0
  call print_token
  add rsp, 8
.L.end.610:
  push rax
  push offset .LC164
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.611
  mov rax, 0
  call error0
  jmp .L.end.611
.L.call.611:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.611:
  push rax
  jmp .Lend609
.Lelse609:
.Lend609:
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset locals
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse612
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  jmp .Lend612
.Lelse612:
  push 0
  jmp .Lend612
.Lend612:
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.613
  mov rax, 0
  call read_define_suffix
  jmp .L.end.613
.L.call.613:
  sub rsp, 8
  mov rax, 0
  call read_define_suffix
  add rsp, 8
.L.end.613:
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC165
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.615
  mov rax, 0
  call consume
  jmp .L.end.615
.L.call.615:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.615:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse614
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.616
  mov rax, 0
  call initializer
  jmp .L.end.616
.L.call.616:
  sub rsp, 8
  mov rax, 0
  call initializer
  add rsp, 8
.L.end.616:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend614
.Lelse614:
.Lend614:
  mov rax, rbp
  sub rax, 56
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.617
  mov rax, 0
  call get_type_size
  jmp .L.end.617
.L.call.617:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.617:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  push 11
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.618
  mov rax, 0
  call new_node
  jmp .L.end.618
.L.call.618:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.618:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.619
  mov rax, 0
  call find_variable
  jmp .L.end.619
.L.call.619:
  sub rsp, 8
  mov rax, 0
  call find_variable
  add rsp, 8
.L.end.619:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.620
  mov rax, 0
  call calloc
  jmp .L.end.620
.L.call.620:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.620:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.621
  mov rax, 0
  call memcpy
  jmp .L.end.621
.L.call.621:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.621:
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse622
  jmp .Lend622
.Lelse622:
.Lend622:
  mov rax, rbp
  sub rax, 72
  push rax
  push 1
  push 48
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.623
  mov rax, 0
  call calloc
  jmp .L.end.623
.L.call.623:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.623:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset locals
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse624
  push 1
  jmp .Lend624
.Lelse624:
  push 2
  jmp .Lend624
.Lend624:
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse625
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend625
.Lelse625:
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend625
.Lend625:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse626
  push 11
  jmp .Lend626
.Lelse626:
  push 13
  jmp .Lend626
.Lend626:
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global initializer
initializer:
  push rbp
  mov rbp, rsp
  sub rsp, 36
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 1
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.627
  mov rax, 0
  call calloc
  jmp .L.end.627
.L.call.627:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.627:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  push 100
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.628
  mov rax, 0
  call calloc
  jmp .L.end.628
.L.call.628:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.628:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC166
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.630
  mov rax, 0
  call check
  jmp .L.end.630
.L.call.630:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.630:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse629
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.631
  mov rax, 0
  call initializer_helper
  jmp .L.end.631
.L.call.631:
  sub rsp, 8
  mov rax, 0
  call initializer_helper
  add rsp, 8
.L.end.631:
  push rax
  jmp .Lend629
.Lelse629:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.632
  mov rax, 0
  call expr
  jmp .L.end.632
.L.call.632:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.632:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 26
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse633
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.634
  mov rax, 0
  call strlen
  jmp .L.end.634
.L.call.634:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.634:
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse635
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend635
.Lelse635:
.Lend635:
  jmp .Lend633
.Lelse633:
.Lend633:
  jmp .Lend629
.Lend629:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global initializer_helper
initializer_helper:
  push rbp
  mov rbp, rsp
  sub rsp, 40
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov [rbp-24], rdx
  push offset .LC167
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.637
  mov rax, 0
  call consume
  jmp .L.end.637
.L.call.637:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.637:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse636
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse638
.Lbegin639:
  push offset .LC168
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.640
  mov rax, 0
  call consume
  jmp .L.end.640
.L.call.640:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.640:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend639
  push offset .LC169
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.642
  mov rax, 0
  call check
  jmp .L.end.642
.L.call.642:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.642:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse641
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.643
  mov rax, 0
  call initializer_helper
  jmp .L.end.643
.L.call.643:
  sub rsp, 8
  mov rax, 0
  call initializer_helper
  add rsp, 8
.L.end.643:
  push rax
  jmp .Lend641
.Lelse641:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.644
  mov rax, 0
  call expr
  jmp .L.end.644
.L.call.644:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.644:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend641
.Lend641:
  push offset .LC170
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.645
  mov rax, 0
  call consume
  jmp .L.end.645
.L.call.645:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.645:
  push rax
.Lcontinue639:
  jmp .Lbegin639
.Lend639:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse646
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend646
.Lelse646:
.Lend646:
.Lbegin647:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend647
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.648
  mov rax, 0
  call new_num
  jmp .L.end.648
.L.call.648:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.648:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lcontinue647:
  jmp .Lbegin647
.Lend647:
  jmp .Lend638
.Lelse638:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse649
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin650:
  push offset .LC171
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.651
  mov rax, 0
  call consume
  jmp .L.end.651
.L.call.651:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.651:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend650
  push offset .LC172
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.653
  mov rax, 0
  call check
  jmp .L.end.653
.L.call.653:
  sub rsp, 8
  mov rax, 0
  call check
  add rsp, 8
.L.end.653:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse652
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.654
  mov rax, 0
  call initializer_helper
  jmp .L.end.654
.L.call.654:
  sub rsp, 8
  mov rax, 0
  call initializer_helper
  add rsp, 8
.L.end.654:
  push rax
  jmp .Lend652
.Lelse652:
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.656
  mov rax, 0
  call get_type_size
  jmp .L.end.656
.L.call.656:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.656:
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.655
  mov rax, 0
  call align_to
  jmp .L.end.655
.L.call.655:
  sub rsp, 8
  mov rax, 0
  call align_to
  add rsp, 8
.L.end.655:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse657
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 44
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.658
  mov rax, 0
  call new_node
  jmp .L.end.658
.L.call.658:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.658:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 124
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend657
.Lelse657:
.Lend657:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.659
  mov rax, 0
  call expr
  jmp .L.end.659
.L.call.659:
  sub rsp, 8
  mov rax, 0
  call expr
  add rsp, 8
.L.end.659:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.660
  mov rax, 0
  call get_type_size
  jmp .L.end.660
.L.call.660:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.660:
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend652
.Lend652:
  push offset .LC173
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.661
  mov rax, 0
  call consume
  jmp .L.end.661
.L.call.661:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.661:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue650:
  jmp .Lbegin650
.Lend650:
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse662
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 44
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.663
  mov rax, 0
  call new_node
  jmp .L.end.663
.L.call.663:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.663:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 124
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend662
.Lelse662:
.Lend662:
  jmp .Lend649
.Lelse649:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.664
  mov rax, 0
  call print_type
  jmp .L.end.664
.L.call.664:
  sub rsp, 8
  mov rax, 0
  call print_type
  add rsp, 8
.L.end.664:
  push rax
  push offset .LC174
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.665
  mov rax, 0
  call error0
  jmp .L.end.665
.L.call.665:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.665:
  push rax
  jmp .Lend649
.Lend649:
  jmp .Lend638
.Lend638:
  jmp .Lend636
.Lelse636:
.Lend636:
  mov rsp, rbp
  pop rbp
  ret
.global struct_ref
struct_ref:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 27
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.666
  mov rax, 0
  call new_node
  jmp .L.end.666
.L.call.666:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.666:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 96
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.668
  mov rax, 0
  call consume_kind
  jmp .L.end.668
.L.call.668:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.668:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.667
  mov rax, 0
  call find_member
  jmp .L.end.667
.L.call.667:
  sub rsp, 8
  mov rax, 0
  call find_member
  add rsp, 8
.L.end.667:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global find_member
find_member:
  push rbp
  mov rbp, rsp
  sub rsp, 824
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse669
  push offset .LC175
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.670
  mov rax, 0
  call error0
  jmp .L.end.670
.L.call.670:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.670:
  push rax
  jmp .Lend669
.Lelse669:
.Lend669:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse671
  push offset .LC176
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.672
  mov rax, 0
  call error0
  jmp .L.end.672
.L.call.672:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.672:
  push rax
  jmp .Lend671
.Lelse671:
.Lend671:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse673
  push offset .LC177
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.674
  mov rax, 0
  call error0
  jmp .L.end.674
.L.call.674:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.674:
  push rax
  jmp .Lend673
.Lelse673:
.Lend673:
  mov rax, rbp
  sub rax, 816
  push rax
  push 0
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 8
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 16
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 24
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 32
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 40
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 48
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 56
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 64
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 72
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 80
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 88
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 96
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 104
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 112
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 120
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 128
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 136
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 144
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 152
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 160
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 168
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 176
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 184
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 192
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 200
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 208
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 216
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 224
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 232
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 240
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 248
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 256
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 264
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 272
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 280
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 288
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 296
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 304
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 312
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 320
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 328
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 336
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 344
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 352
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 360
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 368
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 376
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 384
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 392
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 400
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 408
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 416
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 424
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 432
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 440
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 448
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 456
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 464
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 472
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 480
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 488
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 496
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 504
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 512
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 520
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 528
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 536
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 544
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 552
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 560
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 568
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 576
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 584
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 592
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 600
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 608
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 616
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 624
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 632
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 640
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 648
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 656
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 664
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 672
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 680
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 688
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 696
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 704
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 712
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 720
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 728
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 736
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 744
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 752
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 760
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 768
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 776
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 784
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  push 792
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 816
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.675
  mov rax, 0
  call memcpy
  jmp .L.end.675
.L.call.675:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.675:
  push rax
  mov rax, rbp
  sub rax, 824
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin676:
  mov rax, rbp
  sub rax, 824
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend676
  mov rax, rbp
  sub rax, 816
  push rax
  mov rax, rbp
  sub rax, 824
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.678
  mov rax, 0
  call strcmp
  jmp .L.end.678
.L.call.678:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.678:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse677
  mov rax, rbp
  sub rax, 824
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend677
.Lelse677:
.Lend677:
.Lcontinue676:
  mov rax, rbp
  sub rax, 824
  push rax
  mov rax, rbp
  sub rax, 824
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin676
.Lend676:
  push offset .LC178
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.679
  mov rax, 0
  call error0
  jmp .L.end.679
.L.call.679:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.679:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global find_variable
find_variable:
  push rbp
  mov rbp, rsp
  sub rsp, 24
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push offset locals
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin680:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend680
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse682
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.683
  mov rax, 0
  call memcmp
  jmp .L.end.683
.L.call.683:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.683:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse682
  push 1
  jmp .Lend682
.Lfalse682:
  push 0
.Lend682:
  pop rax
  cmp rax, 0
  je .Lelse681
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend681
.Lelse681:
.Lend681:
.Lcontinue680:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin680
.Lend680:
  mov rax, rbp
  sub rax, 24
  push rax
  push offset globals
  push 0
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin684:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend684
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse686
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.687
  mov rax, 0
  call memcmp
  jmp .L.end.687
.L.call.687:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.687:
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse686
  push 1
  jmp .Lend686
.Lfalse686:
  push 0
.Lend686:
  pop rax
  cmp rax, 0
  je .Lelse685
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  push 2
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend685
.Lelse685:
.Lend685:
.Lcontinue684:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin684
.Lend684:
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global local_variable_init
local_variable_init:
  push rbp
  mov rbp, rsp
  sub rsp, 144
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse688
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend688
.Lelse688:
.Lend688:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 26
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse689
  mov rax, rbp
  sub rax, 16
  push rax
  push 21
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.690
  mov rax, 0
  call new_node
  jmp .L.end.690
.L.call.690:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.690:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.691
  mov rax, 0
  call calloc
  jmp .L.end.691
.L.call.691:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.691:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.692
  mov rax, 0
  call strlen
  jmp .L.end.692
.L.call.692:
  sub rsp, 8
  mov rax, 0
  call strlen
  add rsp, 8
.L.end.692:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin693:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend693
  mov rax, rbp
  sub rax, 32
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.694
  mov rax, 0
  call new_node
  jmp .L.end.694
.L.call.694:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.694:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse696
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse696
  push 1
  jmp .Lend696
.Lfalse696:
  push 0
.Lend696:
  pop rax
  cmp rax, 0
  je .Lelse695
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.697
  mov rax, 0
  call get_type_size
  jmp .L.end.697
.L.call.697:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.697:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.698
  mov rax, 0
  call new_num
  jmp .L.end.698
.L.call.698:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.698:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend695
.Lelse695:
.Lend695:
  mov rax, rbp
  sub rax, 44
  push rax
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.699
  mov rax, 0
  call new_node
  jmp .L.end.699
.L.call.699:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.699:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.700
  mov rax, 0
  call new_node
  jmp .L.end.700
.L.call.700:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.700:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse701
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.702
  mov rax, 0
  call new_num
  jmp .L.end.702
.L.call.702:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.702:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend701
.Lelse701:
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.703
  mov rax, 0
  call new_num
  jmp .L.end.703
.L.call.703:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.703:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend701
.Lend701:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue693:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin693
.Lend693:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend689
.Lelse689:
.Lend689:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse705
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse705
  push 1
  jmp .Lend705
.Lfalse705:
  push 0
.Lend705:
  pop rax
  cmp rax, 0
  je .Lelse704
  mov rax, rbp
  sub rax, 60
  push rax
  push 21
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.706
  mov rax, 0
  call new_node
  jmp .L.end.706
.L.call.706:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.706:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.707
  mov rax, 0
  call calloc
  jmp .L.end.707
.L.call.707:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.707:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 64
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin708:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend708
  mov rax, rbp
  sub rax, 72
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.709
  mov rax, 0
  call new_node
  jmp .L.end.709
.L.call.709:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.709:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse711
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse711
  push 1
  jmp .Lend711
.Lfalse711:
  push 0
.Lend711:
  pop rax
  cmp rax, 0
  je .Lelse710
  mov rax, rbp
  sub rax, 76
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.712
  mov rax, 0
  call get_type_size
  jmp .L.end.712
.L.call.712:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.712:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.713
  mov rax, 0
  call new_num
  jmp .L.end.713
.L.call.713:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.713:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend710
.Lelse710:
.Lend710:
  mov rax, rbp
  sub rax, 84
  push rax
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.714
  mov rax, 0
  call new_node
  jmp .L.end.714
.L.call.714:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.714:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.715
  mov rax, 0
  call new_node
  jmp .L.end.715
.L.call.715:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.715:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 92
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue708:
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin708
.Lend708:
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend704
.Lelse704:
.Lend704:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse717
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse717
  push 1
  jmp .Lend717
.Lfalse717:
  push 0
.Lend717:
  pop rax
  cmp rax, 0
  je .Lelse716
  mov rax, rbp
  sub rax, 100
  push rax
  push 21
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.718
  mov rax, 0
  call new_node
  jmp .L.end.718
.L.call.718:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.718:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 128
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.719
  mov rax, 0
  call calloc
  jmp .L.end.719
.L.call.719:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.719:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 112
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin720:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 112
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend720
  mov rax, rbp
  sub rax, 120
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.721
  mov rax, 0
  call new_node
  jmp .L.end.721
.L.call.721:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.721:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 120
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 120
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.722
  mov rax, 0
  call new_num
  jmp .L.end.722
.L.call.722:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.722:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 128
  push rax
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.723
  mov rax, 0
  call new_node
  jmp .L.end.723
.L.call.723:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.723:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 128
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 120
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 136
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.724
  mov rax, 0
  call new_node
  jmp .L.end.724
.L.call.724:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.724:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 136
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 128
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 136
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 112
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 112
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  mov rax, rbp
  sub rax, 136
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcontinue720:
  mov rax, rbp
  sub rax, 112
  push rax
  mov rax, rbp
  sub rax, 112
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin720
.Lend720:
  mov rax, rbp
  sub rax, 100
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend716
.Lelse716:
.Lend716:
  mov rax, rbp
  sub rax, 144
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.725
  mov rax, 0
  call new_node
  jmp .L.end.725
.L.call.725:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.725:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 144
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 144
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 144
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global get_type
get_type:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse726
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend726
.Lelse726:
.Lend726:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse727
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend727
.Lelse727:
.Lend727:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.728
  mov rax, 0
  call get_type
  jmp .L.end.728
.L.call.728:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.728:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse729
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.730
  mov rax, 0
  call get_type
  jmp .L.end.730
.L.call.730:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.730:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend729
.Lelse729:
.Lend729:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse732
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 25
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse732
  push 1
  jmp .Lend732
.Lfalse732:
  push 0
.Lend732:
  pop rax
  cmp rax, 0
  je .Lelse731
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse733
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse734
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.735
  mov rax, 0
  call print_node
  jmp .L.end.735
.L.call.735:
  sub rsp, 8
  mov rax, 0
  call print_node
  add rsp, 8
.L.end.735:
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.736
  mov rax, 0
  call print_type
  jmp .L.end.736
.L.call.736:
  sub rsp, 8
  mov rax, 0
  call print_type
  add rsp, 8
.L.end.736:
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.737
  mov rax, 0
  call print_type
  jmp .L.end.737
.L.call.737:
  sub rsp, 8
  mov rax, 0
  call print_type
  add rsp, 8
.L.end.737:
  push rax
  push offset .LC179
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.738
  mov rax, 0
  call error0
  jmp .L.end.738
.L.call.738:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.738:
  push rax
  jmp .Lend734
.Lelse734:
.Lend734:
  jmp .Lend733
.Lelse733:
.Lend733:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend731
.Lelse731:
.Lend731:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global get_type_size
get_type_size:
  push rbp
  mov rbp, rsp
  sub rsp, 12
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse739
  push offset .LC180
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.740
  mov rax, 0
  call error0
  jmp .L.end.740
.L.call.740:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.740:
  push rax
  jmp .Lend739
.Lelse739:
.Lend739:
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 5
  je .Lcase742
  cmp rax, 4
  je .Lcase743
  cmp rax, 2
  je .Lcase744
  cmp rax, 3
  je .Lcase745
  cmp rax, 1
  je .Lcase746
  jmp .Lcase747
  jmp .Lend741
.Lcase746:
  push 4
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase745:
  push 8
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase744:
  push 1
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase743:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse747
  push offset .LC181
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.748
  mov rax, 0
  call error0
  jmp .L.end.748
.L.call.748:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.748:
  push rax
  jmp .Lend747
.Lelse747:
.Lend747:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.749
  mov rax, 0
  call get_type_size
  jmp .L.end.749
.L.call.749:
  sub rsp, 8
  mov rax, 0
  call get_type_size
  add rsp, 8
.L.end.749:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase742:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
.Lcase747:
  push offset .LC182
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.750
  mov rax, 0
  call error0
  jmp .L.end.750
.L.call.750:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.750:
  push rax
.Lend741:
  mov rsp, rbp
  pop rbp
  ret
.global read_define_head
read_define_head:
  push rbp
  mov rbp, rsp
  sub rsp, 80
  mov rax, rbp
  sub rax, 8
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.751
  mov rax, 0
  call consume_kind
  jmp .L.end.751
.L.call.751:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.751:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse752
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.753
  mov rax, 0
  call find_tag
  jmp .L.end.753
.L.call.753:
  sub rsp, 8
  mov rax, 0
  call find_tag
  add rsp, 8
.L.end.753:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse754
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend754
.Lelse754:
  push offset token
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend754
.Lend754:
  jmp .Lend752
.Lelse752:
.Lend752:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse755
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.756
  mov rax, 0
  call define_struct
  jmp .L.end.756
.L.call.756:
  sub rsp, 8
  mov rax, 0
  call define_struct
  add rsp, 8
.L.end.756:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend755
.Lelse755:
.Lend755:
  mov rax, rbp
  sub rax, 36
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse757
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.758
  mov rax, 0
  call define_enum
  jmp .L.end.758
.L.call.758:
  sub rsp, 8
  mov rax, 0
  call define_enum
  add rsp, 8
.L.end.758:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse759
  mov rax, rbp
  sub rax, 36
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend759
.Lelse759:
.Lend759:
  jmp .Lend757
.Lelse757:
.Lend757:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse760
  mov rax, rbp
  sub rax, 44
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.761
  mov rax, 0
  call consume_kind
  jmp .L.end.761
.L.call.761:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.761:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse762
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend762
.Lelse762:
.Lend762:
  mov rax, rbp
  sub rax, 8
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.763
  mov rax, 0
  call calloc
  jmp .L.end.763
.L.call.763:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.763:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  push offset .LC183
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.764
  mov rax, 0
  call memcmp
  jmp .L.end.764
.L.call.764:
  sub rsp, 8
  mov rax, 0
  call memcmp
  add rsp, 8
.L.end.764:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse765
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 2
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend765
.Lelse765:
.Lend765:
  jmp .Lend760
.Lelse760:
.Lend760:
.Lbegin766:
.Lcontinue766:
  push offset .LC184
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.767
  mov rax, 0
  call consume
  jmp .L.end.767
.L.call.767:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.767:
  push rax
  pop rax
  cmp rax, 0
  je .Lend766
  mov rax, rbp
  sub rax, 56
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.768
  mov rax, 0
  call calloc
  jmp .L.end.768
.L.call.768:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.768:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 3
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin766
.Lend766:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse769
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend769
.Lelse769:
.Lend769:
  mov rax, rbp
  sub rax, 64
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  push 4
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.770
  mov rax, 0
  call consume_kind
  jmp .L.end.770
.L.call.770:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.770:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse772
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 5
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse773
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse773
  push 1
  jmp .Lend773
.Lfalse773:
  push 0
.Lend773:
  pop rax
  cmp rax, 0
  je .Lfalse772
  push 1
  jmp .Lend772
.Lfalse772:
  push 0
.Lend772:
  pop rax
  cmp rax, 0
  je .Lelse771
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.774
  mov rax, 0
  call print_type
  jmp .L.end.774
.L.call.774:
  sub rsp, 8
  mov rax, 0
  call print_type
  add rsp, 8
.L.end.774:
  push rax
  push offset .LC185
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.775
  mov rax, 0
  call error0
  jmp .L.end.775
.L.call.775:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.775:
  push rax
  jmp .Lend771
.Lelse771:
.Lend771:
  mov rax, rbp
  sub rax, 80
  push rax
  push 1
  push 16
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.776
  mov rax, 0
  call calloc
  jmp .L.end.776
.L.call.776:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.776:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global read_define_suffix
read_define_suffix:
  push rbp
  mov rbp, rsp
  sub rsp, 40
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse777
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.778
  mov rax, 0
  call print_token
  jmp .L.end.778
.L.call.778:
  sub rsp, 8
  mov rax, 0
  call print_token
  add rsp, 8
.L.end.778:
  push rax
  push offset .LC186
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.779
  mov rax, 0
  call error0
  jmp .L.end.779
.L.call.779:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.779:
  push rax
  jmp .Lend777
.Lelse777:
.Lend777:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin780:
.Lcontinue780:
  push offset .LC187
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.781
  mov rax, 0
  call consume
  jmp .L.end.781
.L.call.781:
  sub rsp, 8
  mov rax, 0
  call consume
  add rsp, 8
.L.end.781:
  push rax
  pop rax
  cmp rax, 0
  je .Lend780
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.782
  mov rax, 0
  call calloc
  jmp .L.end.782
.L.call.782:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.782:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push 4
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  push 2
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.784
  mov rax, 0
  call consume_kind
  jmp .L.end.784
.L.call.784:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.784:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  pop rax
  cmp rax, 0
  je .Lelse783
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend783
.Lelse783:
.Lend783:
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC188
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.785
  mov rax, 0
  call expect
  jmp .L.end.785
.L.call.785:
  sub rsp, 8
  mov rax, 0
  call expect
  add rsp, 8
.L.end.785:
  push rax
  jmp .Lbegin780
.Lend780:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rsp, rbp
  pop rbp
  ret
.global align_to
align_to:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-4], edi
  mov [rbp-8], esi
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rax
  not rax
  push rax
  pop rdi
  pop rax
  and rax, rdi
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global push_tag
push_tag:
  push rbp
  mov rbp, rsp
  sub rsp, 36
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov [rbp-20], edx
  mov rax, rbp
  sub rax, 28
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.786
  mov rax, 0
  call calloc
  jmp .L.end.786
.L.call.786:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.786:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.787
  mov rax, 0
  call memcpy
  jmp .L.end.787
.L.call.787:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.787:
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.788
  mov rax, 0
  call find_or_register_tag
  jmp .L.end.788
.L.call.788:
  sub rsp, 8
  mov rax, 0
  call find_or_register_tag
  add rsp, 8
.L.end.788:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse790
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse790
  push 1
  jmp .Lend790
.Lfalse790:
  push 0
.Lend790:
  pop rax
  cmp rax, 0
  je .Lelse789
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  jmp .Lend789
.Lelse789:
.Lend789:
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rsp, rbp
  pop rbp
  ret
.global find_tag
find_tag:
  push rbp
  mov rbp, rsp
  sub rsp, 24
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.791
  mov rax, 0
  call calloc
  jmp .L.end.791
.L.call.791:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.791:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.792
  mov rax, 0
  call memcpy
  jmp .L.end.792
.L.call.792:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.792:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  push offset tags
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin793:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend793
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.795
  mov rax, 0
  call strcmp
  jmp .L.end.795
.L.call.795:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.795:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse794
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend794
.Lelse794:
.Lend794:
.Lcontinue793:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin793
.Lend793:
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global find_or_register_tag
find_or_register_tag:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.796
  mov rax, 0
  call calloc
  jmp .L.end.796
.L.call.796:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.796:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.797
  mov rax, 0
  call memcpy
  jmp .L.end.797
.L.call.797:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.797:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  push offset tags
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin798:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend798
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.800
  mov rax, 0
  call strcmp
  jmp .L.end.800
.L.call.800:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.800:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse799
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend799
.Lelse799:
.Lend799:
.Lcontinue798:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin798
.Lend798:
  mov rax, rbp
  sub rax, 32
  push rax
  push 1
  push 24
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.801
  mov rax, 0
  call calloc
  jmp .L.end.801
.L.call.801:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.801:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 1
  push 40
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.802
  mov rax, 0
  call calloc
  jmp .L.end.802
.L.call.802:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.802:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset tags
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse803
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  push offset tags
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend803
.Lelse803:
.Lend803:
  push offset tags
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global find_enum_var
find_enum_var:
  push rbp
  mov rbp, rsp
  sub rsp, 24
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 100
  push 1
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.804
  mov rax, 0
  call calloc
  jmp .L.end.804
.L.call.804:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.804:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.805
  mov rax, 0
  call memcpy
  jmp .L.end.805
.L.call.805:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.805:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  push offset enum_vars
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin806:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend806
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.808
  mov rax, 0
  call strcmp
  jmp .L.end.808
.L.call.808:
  sub rsp, 8
  mov rax, 0
  call strcmp
  add rsp, 8
.L.end.808:
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse807
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.809
  mov rax, 0
  call new_num
  jmp .L.end.809
.L.call.809:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.809:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend807
.Lelse807:
.Lend807:
.Lcontinue806:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin806
.Lend806:
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global convert_predefined_keyword_to_num
convert_predefined_keyword_to_num:
  push rbp
  mov rbp, rsp
  push 21
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.811
  mov rax, 0
  call consume_kind
  jmp .L.end.811
.L.call.811:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.811:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse810
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.812
  mov rax, 0
  call new_num
  jmp .L.end.812
.L.call.812:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.812:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend810
.Lelse810:
.Lend810:
  push 22
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.814
  mov rax, 0
  call consume_kind
  jmp .L.end.814
.L.call.814:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.814:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse813
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.815
  mov rax, 0
  call new_num
  jmp .L.end.815
.L.call.815:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.815:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend813
.Lelse813:
.Lend813:
  push 23
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.817
  mov rax, 0
  call consume_kind
  jmp .L.end.817
.L.call.817:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.817:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse816
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.818
  mov rax, 0
  call new_num
  jmp .L.end.818
.L.call.818:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.818:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend816
.Lelse816:
.Lend816:
  push 26
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.820
  mov rax, 0
  call consume_kind
  jmp .L.end.820
.L.call.820:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.820:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse819
  push 2
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.821
  mov rax, 0
  call new_num
  jmp .L.end.821
.L.call.821:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.821:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend819
.Lelse819:
.Lend819:
  push 25
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.823
  mov rax, 0
  call consume_kind
  jmp .L.end.823
.L.call.823:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.823:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse822
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.824
  mov rax, 0
  call new_num
  jmp .L.end.824
.L.call.824:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.824:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend822
.Lelse822:
.Lend822:
  push 24
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.826
  mov rax, 0
  call consume_kind
  jmp .L.end.826
.L.call.826:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.826:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse825
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.827
  mov rax, 0
  call new_num
  jmp .L.end.827
.L.call.827:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.827:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend825
.Lelse825:
.Lend825:
  push 27
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.829
  mov rax, 0
  call consume_kind
  jmp .L.end.829
.L.call.829:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.829:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse828
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.830
  mov rax, 0
  call new_num
  jmp .L.end.830
.L.call.830:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.830:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend828
.Lelse828:
.Lend828:
  push 28
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.832
  mov rax, 0
  call consume_kind
  jmp .L.end.832
.L.call.832:
  sub rsp, 8
  mov rax, 0
  call consume_kind
  add rsp, 8
.L.end.832:
  push rax
  pop rax
  cmp rax, 0
  je .Lelse831
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.833
  mov rax, 0
  call new_num
  jmp .L.end.833
.L.call.833:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.833:
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  jmp .Lend831
.Lelse831:
.Lend831:
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global gen
gen:
  push rbp
  mov rbp, rsp
  sub rsp, 88
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse834
  push offset .LC213
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.835
  mov rax, 0
  call error0
  jmp .L.end.835
.L.call.835:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.835:
  push rax
  jmp .Lend834
.Lelse834:
.Lend834:
  mov rax, rbp
  sub rax, 12
  push rax
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 24
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 25
  je .Lcase837
  cmp rax, 24
  je .Lcase838
  cmp rax, 23
  je .Lcase839
  cmp rax, 22
  je .Lcase840
  cmp rax, 43
  je .Lcase841
  cmp rax, 42
  je .Lcase842
  cmp rax, 21
  je .Lcase843
  cmp rax, 18
  je .Lcase844
  cmp rax, 17
  je .Lcase845
  cmp rax, 41
  je .Lcase846
  cmp rax, 15
  je .Lcase847
  cmp rax, 29
  je .Lcase848
  cmp rax, 28
  je .Lcase849
  cmp rax, 14
  je .Lcase850
  cmp rax, 10
  je .Lcase851
  cmp rax, 11
  je .Lcase852
  cmp rax, 13
  je .Lcase853
  cmp rax, 27
  je .Lcase854
  cmp rax, 12
  je .Lcase855
  cmp rax, 5
  je .Lcase856
  cmp rax, 26
  je .Lcase857
  cmp rax, 33
  je .Lcase858
  cmp rax, 31
  je .Lcase859
  cmp rax, 32
  je .Lcase860
  cmp rax, 30
  je .Lcase861
  cmp rax, 34
  je .Lcase862
  cmp rax, 35
  je .Lcase863
  cmp rax, 39
  je .Lcase864
  cmp rax, 40
  je .Lcase865
  jmp .Lend836
.Lcase865:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.865
  mov rax, 0
  call gen
  jmp .L.end.865
.L.call.865:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.865:
  push rax
  push offset .LC214
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.866
  mov rax, 0
  call printf
  jmp .L.end.866
.L.call.866:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.866:
  push rax
  push offset .LC215
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.867
  mov rax, 0
  call printf
  jmp .L.end.867
.L.call.867:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.867:
  push rax
  push offset .LC216
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.868
  mov rax, 0
  call printf
  jmp .L.end.868
.L.call.868:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.868:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.869
  mov rax, 0
  call gen
  jmp .L.end.869
.L.call.869:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.869:
  push rax
  push offset .LC217
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.870
  mov rax, 0
  call printf
  jmp .L.end.870
.L.call.870:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.870:
  push rax
  push offset .LC218
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.871
  mov rax, 0
  call printf
  jmp .L.end.871
.L.call.871:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.871:
  push rax
  push offset .LC219
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.872
  mov rax, 0
  call printf
  jmp .L.end.872
.L.call.872:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.872:
  push rax
  push offset .LC220
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.873
  mov rax, 0
  call printf
  jmp .L.end.873
.L.call.873:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.873:
  push rax
  push offset .LC221
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.874
  mov rax, 0
  call printf
  jmp .L.end.874
.L.call.874:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.874:
  push rax
  push offset .LC222
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.875
  mov rax, 0
  call printf
  jmp .L.end.875
.L.call.875:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.875:
  push rax
  push offset .LC223
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.876
  mov rax, 0
  call printf
  jmp .L.end.876
.L.call.876:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.876:
  push rax
  push offset .LC224
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.877
  mov rax, 0
  call printf
  jmp .L.end.877
.L.call.877:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.877:
  push rax
.Lcase864:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.878
  mov rax, 0
  call gen
  jmp .L.end.878
.L.call.878:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.878:
  push rax
  push offset .LC225
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.879
  mov rax, 0
  call printf
  jmp .L.end.879
.L.call.879:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.879:
  push rax
  push offset .LC226
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.880
  mov rax, 0
  call printf
  jmp .L.end.880
.L.call.880:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.880:
  push rax
  push offset .LC227
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.881
  mov rax, 0
  call printf
  jmp .L.end.881
.L.call.881:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.881:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.882
  mov rax, 0
  call gen
  jmp .L.end.882
.L.call.882:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.882:
  push rax
  push offset .LC228
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.883
  mov rax, 0
  call printf
  jmp .L.end.883
.L.call.883:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.883:
  push rax
  push offset .LC229
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.884
  mov rax, 0
  call printf
  jmp .L.end.884
.L.call.884:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.884:
  push rax
  push offset .LC230
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.885
  mov rax, 0
  call printf
  jmp .L.end.885
.L.call.885:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.885:
  push rax
  push offset .LC231
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.886
  mov rax, 0
  call printf
  jmp .L.end.886
.L.call.886:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.886:
  push rax
  push offset .LC232
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.887
  mov rax, 0
  call printf
  jmp .L.end.887
.L.call.887:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.887:
  push rax
  push offset .LC233
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.888
  mov rax, 0
  call printf
  jmp .L.end.888
.L.call.888:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.888:
  push rax
  push offset .LC234
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.889
  mov rax, 0
  call printf
  jmp .L.end.889
.L.call.889:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.889:
  push rax
  push offset .LC235
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.890
  mov rax, 0
  call printf
  jmp .L.end.890
.L.call.890:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.890:
  push rax
.Lcase863:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.891
  mov rax, 0
  call gen
  jmp .L.end.891
.L.call.891:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.891:
  push rax
  push offset .LC236
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.892
  mov rax, 0
  call printf
  jmp .L.end.892
.L.call.892:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.892:
  push rax
  push offset .LC237
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.893
  mov rax, 0
  call printf
  jmp .L.end.893
.L.call.893:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.893:
  push rax
  push offset .LC238
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.894
  mov rax, 0
  call printf
  jmp .L.end.894
.L.call.894:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.894:
  push rax
.Lcase862:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.895
  mov rax, 0
  call gen
  jmp .L.end.895
.L.call.895:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.895:
  push rax
  push offset .LC239
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.896
  mov rax, 0
  call printf
  jmp .L.end.896
.L.call.896:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.896:
  push rax
  push offset .LC240
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.897
  mov rax, 0
  call printf
  jmp .L.end.897
.L.call.897:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.897:
  push rax
  push offset .LC241
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.898
  mov rax, 0
  call printf
  jmp .L.end.898
.L.call.898:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.898:
  push rax
  push offset .LC242
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.899
  mov rax, 0
  call printf
  jmp .L.end.899
.L.call.899:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.899:
  push rax
  push offset .LC243
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.900
  mov rax, 0
  call printf
  jmp .L.end.900
.L.call.900:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.900:
  push rax
.Lcase861:
  mov rax, rbp
  sub rax, 40
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.901
  mov rax, 0
  call new_node
  jmp .L.end.901
.L.call.901:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.901:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 1
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.903
  mov rax, 0
  call new_num
  jmp .L.end.903
.L.call.903:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.903:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.902
  mov rax, 0
  call new_binary
  jmp .L.end.902
.L.call.902:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.902:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.904
  mov rax, 0
  call gen
  jmp .L.end.904
.L.call.904:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.904:
  push rax
.Lcase860:
  push 30
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.906
  mov rax, 0
  call new_binary
  jmp .L.end.906
.L.call.906:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.906:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.905
  mov rax, 0
  call gen
  jmp .L.end.905
.L.call.905:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.905:
  push rax
  push offset .LC244
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.907
  mov rax, 0
  call printf
  jmp .L.end.907
.L.call.907:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.907:
  push rax
  push offset .LC245
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.908
  mov rax, 0
  call printf
  jmp .L.end.908
.L.call.908:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.908:
  push rax
  push offset .LC246
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.909
  mov rax, 0
  call printf
  jmp .L.end.909
.L.call.909:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.909:
  push rax
  push offset .LC247
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.910
  mov rax, 0
  call printf
  jmp .L.end.910
.L.call.910:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.910:
  push rax
  push offset .LC248
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.911
  mov rax, 0
  call printf
  jmp .L.end.911
.L.call.911:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.911:
  push rax
.Lcase859:
  mov rax, rbp
  sub rax, 40
  push rax
  push 10
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.912
  mov rax, 0
  call new_node
  jmp .L.end.912
.L.call.912:
  sub rsp, 8
  mov rax, 0
  call new_node
  add rsp, 8
.L.end.912:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  push 2
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.914
  mov rax, 0
  call new_num
  jmp .L.end.914
.L.call.914:
  sub rsp, 8
  mov rax, 0
  call new_num
  add rsp, 8
.L.end.914:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.913
  mov rax, 0
  call new_binary
  jmp .L.end.913
.L.call.913:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.913:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.915
  mov rax, 0
  call gen
  jmp .L.end.915
.L.call.915:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.915:
  push rax
.Lcase858:
  push 31
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.917
  mov rax, 0
  call new_binary
  jmp .L.end.917
.L.call.917:
  sub rsp, 8
  mov rax, 0
  call new_binary
  add rsp, 8
.L.end.917:
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.916
  mov rax, 0
  call gen
  jmp .L.end.916
.L.call.916:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.916:
  push rax
  push offset .LC249
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.918
  mov rax, 0
  call printf
  jmp .L.end.918
.L.call.918:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.918:
  push rax
  push offset .LC250
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.919
  mov rax, 0
  call printf
  jmp .L.end.919
.L.call.919:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.919:
  push rax
  push offset .LC251
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.920
  mov rax, 0
  call printf
  jmp .L.end.920
.L.call.920:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.920:
  push rax
  push offset .LC252
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.921
  mov rax, 0
  call printf
  jmp .L.end.921
.L.call.921:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.921:
  push rax
  push offset .LC253
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.922
  mov rax, 0
  call printf
  jmp .L.end.922
.L.call.922:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.922:
  push rax
.Lcase857:
  push offset .LC254
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.923
  mov rax, 0
  call printf
  jmp .L.end.923
.L.call.923:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.923:
  push rax
.Lcase856:
  push offset .LC255
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.924
  mov rax, 0
  call printf
  jmp .L.end.924
.L.call.924:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.924:
  push rax
.Lcase855:
  push offset .LC256
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.925
  mov rax, 0
  call printf
  jmp .L.end.925
.L.call.925:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.925:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88 // !!!!!!!!!!!! node->var
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40 // node->var->init
  push rax
  pop rax
  mov rax, [rax] // !!!!!!!!!!!! ここで0になるかどうか --> なってる
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al /// 1 ND_NOTの効果
  push rax
  pop rax
  cmp rax, 0
  je .Lelse926
  push offset .LC257 // "  .zero %d\n"
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.927
  mov rax, 0
  call printf
  jmp .L.end.927
.L.call.927:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.927:
  push rax
  jmp .Lend926
.Lelse926:
.Lend926:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56 // node->type
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0 // node->type->ty
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse929
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse929
  push 1
  jmp .Lend929
.Lfalse929:
  push 0
.Lend929:
  pop rax
  cmp rax, 0
  je .Lelse928
  mov rax, rbp
  sub rax, 44
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin930:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend930
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 44
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse931
  push offset .LC258
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 124
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.932
  mov rax, 0
  call printf
  jmp .L.end.932
.L.call.932:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.932:
  push rax
  jmp .Lcontinue930
  jmp .Lend931
.Lelse931:
.Lend931:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 5
  je .Lcase934
  cmp rax, 4
  je .Lcase935
  cmp rax, 3
  je .Lcase936
  cmp rax, 2
  je .Lcase937
  cmp rax, 1
  je .Lcase938
  jmp .Lcase939
  jmp .Lend933
.Lcase938:
  push offset .LC259
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.939
  mov rax, 0
  call printf
  jmp .L.end.939
.L.call.939:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.939:
  push rax
  jmp .Lend933
.Lcase937:
  push offset .LC260
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.940
  mov rax, 0
  call printf
  jmp .L.end.940
.L.call.940:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.940:
  push rax
  jmp .Lend933
.Lcase936:
  push offset .LC261
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88 // node->var->init
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40 // node->var->init
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24 // node->var->init->block
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44 // i * size
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.941
  mov rax, 0
  call printf
  jmp .L.end.941
.L.call.941:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.941:
  push rax
  jmp .Lend933
.Lcase935:
.Lcase934:
.Lcase939:
  jmp .Lend933
.Lend933:
.Lcontinue930:
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin930
.Lend930:
  jmp .Lend928
.Lelse928:
.Lend928:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax] // node
  push rax
  pop rax
  add rax, 88   // node->var
  push rax
  pop rax
  mov rax, [rax] // node->var
  push rax
  pop rax
  add rax, 40   // node->var->init
  push rax
  pop rax
  mov rax, [rax] // node->var->init // ここでraxが0x0に. つまりnode->var->initがnull
  push rax
  pop rax
  add rax, 0    // node->var->init->kind
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax] // この時点でraxが0x0でエラー.
  push rax
  push 26    // ND_STRING
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse942
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 56
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse943
  push offset .LC262
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.944
  mov rax, 0
  call printf
  jmp .L.end.944
.L.call.944:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.944:
  push rax
  jmp .Lend943
.Lelse943:
  push offset .LC263
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 80
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.945
  mov rax, 0
  call printf
  jmp .L.end.945
.L.call.945:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.945:
  push rax
  jmp .Lend943
.Lend943:
  jmp .Lend942
.Lelse942:
.Lend942:
  push offset .LC264
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.946
  mov rax, 0
  call printf
  jmp .L.end.946
.L.call.946:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.946:
  push rax
.Lcase854:
.Lcase853:
.Lcase852:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.947
  mov rax, 0
  call gen_val
  jmp .L.end.947
.L.call.947:
  sub rsp, 8
  mov rax, 0
  call gen_val
  add rsp, 8
.L.end.947:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.948
  mov rax, 0
  call get_type
  jmp .L.end.948
.L.call.948:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.948:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse950
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse950
  push 1
  jmp .Lend950
.Lfalse950:
  push 0
.Lend950:
  pop rax
  cmp rax, 0
  je .Lelse949
  jmp .Lend949
.Lelse949:
.Lend949:
  push offset .LC265
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.951
  mov rax, 0
  call printf
  jmp .L.end.951
.L.call.951:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.951:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse952
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 1
  je .Lcase954
  cmp rax, 2
  je .Lcase955
  jmp .Lcase956
  jmp .Lend953
.Lcase955:
  push offset .LC266
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.956
  mov rax, 0
  call printf
  jmp .L.end.956
.L.call.956:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.956:
  push rax
  jmp .Lend953
.Lcase954:
  push offset .LC267
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.957
  mov rax, 0
  call printf
  jmp .L.end.957
.L.call.957:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.957:
  push rax
  jmp .Lend953
.Lcase956:
  push offset .LC268
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.958
  mov rax, 0
  call printf
  jmp .L.end.958
.L.call.958:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.958:
  push rax
  jmp .Lend953
.Lend953:
  jmp .Lend952
.Lelse952:
  push offset .LC269
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.959
  mov rax, 0
  call printf
  jmp .L.end.959
.L.call.959:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.959:
  push rax
  jmp .Lend952
.Lend952:
  push offset .LC270
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.960
  mov rax, 0
  call printf
  jmp .L.end.960
.L.call.960:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.960:
  push rax
.Lcase851:
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.961
  mov rax, 0
  call get_type
  jmp .L.end.961
.L.call.961:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.961:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.962
  mov rax, 0
  call gen_val
  jmp .L.end.962
.L.call.962:
  sub rsp, 8
  mov rax, 0
  call gen_val
  add rsp, 8
.L.end.962:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.963
  mov rax, 0
  call gen
  jmp .L.end.963
.L.call.963:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.963:
  push rax
  push offset .LC271
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.964
  mov rax, 0
  call printf
  jmp .L.end.964
.L.call.964:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.964:
  push rax
  push offset .LC272
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.965
  mov rax, 0
  call printf
  jmp .L.end.965
.L.call.965:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.965:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse967
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 2
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse967
  push 1
  jmp .Lend967
.Lfalse967:
  push 0
.Lend967:
  pop rax
  cmp rax, 0
  je .Lelse966
  push offset .LC273
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.968
  mov rax, 0
  call printf
  jmp .L.end.968
.L.call.968:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.968:
  push rax
  jmp .Lend966
.Lelse966:
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse970
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse970
  push 1
  jmp .Lend970
.Lfalse970:
  push 0
.Lend970:
  pop rax
  cmp rax, 0
  je .Lelse969
  push offset .LC274
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.971
  mov rax, 0
  call printf
  jmp .L.end.971
.L.call.971:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.971:
  push rax
  jmp .Lend969
.Lelse969:
  push offset .LC275
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.972
  mov rax, 0
  call printf
  jmp .L.end.972
.L.call.972:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.972:
  push rax
  jmp .Lend969
.Lend969:
  jmp .Lend966
.Lend966:
  push offset .LC276
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.973
  mov rax, 0
  call printf
  jmp .L.end.973
.L.call.973:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.973:
  push rax
.Lcase850:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse974
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.975
  mov rax, 0
  call gen
  jmp .L.end.975
.L.call.975:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.975:
  push rax
  push offset .LC277
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.976
  mov rax, 0
  call printf
  jmp .L.end.976
.L.call.976:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.976:
  push rax
  push offset .LC278
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.977
  mov rax, 0
  call printf
  jmp .L.end.977
.L.call.977:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.977:
  push rax
  push offset .LC279
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.978
  mov rax, 0
  call printf
  jmp .L.end.978
.L.call.978:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.978:
  push rax
  push offset .LC280
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.979
  mov rax, 0
  call printf
  jmp .L.end.979
.L.call.979:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.979:
  push rax
  jmp .Lend974
.Lelse974:
.Lend974:
.Lcase849:
  push offset break_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse980
  push offset .LC281
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.981
  mov rax, 0
  call error0
  jmp .L.end.981
.L.call.981:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.981:
  push rax
  jmp .Lend980
.Lelse980:
.Lend980:
  push offset .LC282
  push offset break_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.982
  mov rax, 0
  call printf
  jmp .L.end.982
.L.call.982:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.982:
  push rax
.Lcase848:
  push offset continue_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse983
  push offset .LC283
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.984
  mov rax, 0
  call error0
  jmp .L.end.984
.L.call.984:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.984:
  push rax
  jmp .Lend983
.Lelse983:
.Lend983:
  push offset .LC284
  push offset continue_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.985
  mov rax, 0
  call printf
  jmp .L.end.985
.L.call.985:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.985:
  push rax
.Lcase847:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.986
  mov rax, 0
  call gen
  jmp .L.end.986
.L.call.986:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.986:
  push rax
  push offset .LC285
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.987
  mov rax, 0
  call printf
  jmp .L.end.987
.L.call.987:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.987:
  push rax
  push offset .LC286
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.988
  mov rax, 0
  call printf
  jmp .L.end.988
.L.call.988:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.988:
  push rax
  push offset .LC287
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.989
  mov rax, 0
  call printf
  jmp .L.end.989
.L.call.989:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.989:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 16
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse990
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.991
  mov rax, 0
  call gen
  jmp .L.end.991
.L.call.991:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.991:
  push rax
  push offset .LC288
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.992
  mov rax, 0
  call printf
  jmp .L.end.992
.L.call.992:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.992:
  push rax
  push offset .LC289
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.993
  mov rax, 0
  call printf
  jmp .L.end.993
.L.call.993:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.993:
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.994
  mov rax, 0
  call gen
  jmp .L.end.994
.L.call.994:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.994:
  push rax
  push offset .LC290
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.995
  mov rax, 0
  call printf
  jmp .L.end.995
.L.call.995:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.995:
  push rax
  jmp .Lend990
.Lelse990:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.996
  mov rax, 0
  call gen
  jmp .L.end.996
.L.call.996:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.996:
  push rax
  push offset .LC291
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.997
  mov rax, 0
  call printf
  jmp .L.end.997
.L.call.997:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.997:
  push rax
  push offset .LC292
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.998
  mov rax, 0
  call printf
  jmp .L.end.998
.L.call.998:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.998:
  push rax
  jmp .Lend990
.Lend990:
  push offset .LC293
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.999
  mov rax, 0
  call printf
  jmp .L.end.999
.L.call.999:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.999:
  push rax
.Lcase846:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1000
  mov rax, 0
  call gen
  jmp .L.end.1000
.L.call.1000:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1000:
  push rax
  push offset .LC294
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1001
  mov rax, 0
  call printf
  jmp .L.end.1001
.L.call.1001:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1001:
  push rax
  push offset .LC295
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1002
  mov rax, 0
  call printf
  jmp .L.end.1002
.L.call.1002:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1002:
  push rax
  push offset .LC296
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1003
  mov rax, 0
  call printf
  jmp .L.end.1003
.L.call.1003:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1003:
  push rax
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1004
  mov rax, 0
  call gen
  jmp .L.end.1004
.L.call.1004:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1004:
  push rax
  push offset .LC297
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1005
  mov rax, 0
  call printf
  jmp .L.end.1005
.L.call.1005:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1005:
  push rax
  push offset .LC298
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1006
  mov rax, 0
  call printf
  jmp .L.end.1006
.L.call.1006:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1006:
  push rax
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1007
  mov rax, 0
  call gen
  jmp .L.end.1007
.L.call.1007:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1007:
  push rax
  push offset .LC299
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1008
  mov rax, 0
  call printf
  jmp .L.end.1008
.L.call.1008:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1008:
  push rax
  push offset .LC300
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1009
  mov rax, 0
  call printf
  jmp .L.end.1009
.L.call.1009:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1009:
  push rax
.Lcase845:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  push offset break_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset break_sequence
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  push offset continue_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset continue_sequence
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC301
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1010
  mov rax, 0
  call printf
  jmp .L.end.1010
.L.call.1010:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1010:
  push rax
  push offset .LC302
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1011
  mov rax, 0
  call printf
  jmp .L.end.1011
.L.call.1011:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1011:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1012
  mov rax, 0
  call gen
  jmp .L.end.1012
.L.call.1012:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1012:
  push rax
  push offset .LC303
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1013
  mov rax, 0
  call printf
  jmp .L.end.1013
.L.call.1013:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1013:
  push rax
  push offset .LC304
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1014
  mov rax, 0
  call printf
  jmp .L.end.1014
.L.call.1014:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1014:
  push rax
  push offset .LC305
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1015
  mov rax, 0
  call printf
  jmp .L.end.1015
.L.call.1015:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1015:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1016
  mov rax, 0
  call gen
  jmp .L.end.1016
.L.call.1016:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1016:
  push rax
  push offset .LC306
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1017
  mov rax, 0
  call printf
  jmp .L.end.1017
.L.call.1017:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1017:
  push rax
  push offset .LC307
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1018
  mov rax, 0
  call printf
  jmp .L.end.1018
.L.call.1018:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1018:
  push rax
  push offset break_sequence
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset continue_sequence
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lcase844:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  push offset break_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset break_sequence
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  push offset continue_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset continue_sequence
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1019
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1020
  mov rax, 0
  call gen
  jmp .L.end.1020
.L.call.1020:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1020:
  push rax
  jmp .Lend1019
.Lelse1019:
.Lend1019:
  push offset .LC308
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1021
  mov rax, 0
  call printf
  jmp .L.end.1021
.L.call.1021:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1021:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1022
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1023
  mov rax, 0
  call gen
  jmp .L.end.1023
.L.call.1023:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1023:
  push rax
  jmp .Lend1022
.Lelse1022:
  push offset .LC309
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1024
  mov rax, 0
  call printf
  jmp .L.end.1024
.L.call.1024:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1024:
  push rax
  jmp .Lend1022
.Lend1022:
  push offset .LC310
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1025
  mov rax, 0
  call printf
  jmp .L.end.1025
.L.call.1025:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1025:
  push rax
  push offset .LC311
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1026
  mov rax, 0
  call printf
  jmp .L.end.1026
.L.call.1026:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1026:
  push rax
  push offset .LC312
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1027
  mov rax, 0
  call printf
  jmp .L.end.1027
.L.call.1027:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1027:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1028
  mov rax, 0
  call gen
  jmp .L.end.1028
.L.call.1028:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1028:
  push rax
  push offset .LC313
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1029
  mov rax, 0
  call printf
  jmp .L.end.1029
.L.call.1029:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1029:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1030
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1031
  mov rax, 0
  call gen
  jmp .L.end.1031
.L.call.1031:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1031:
  push rax
  jmp .Lend1030
.Lelse1030:
.Lend1030:
  push offset .LC314
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1032
  mov rax, 0
  call printf
  jmp .L.end.1032
.L.call.1032:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1032:
  push rax
  push offset .LC315
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1033
  mov rax, 0
  call printf
  jmp .L.end.1033
.L.call.1033:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1033:
  push rax
  push offset break_sequence
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset continue_sequence
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lcase843:
  mov rax, rbp
  sub rax, 64
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1034:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1034
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1035
  mov rax, 0
  call gen
  jmp .L.end.1035
.L.call.1035:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1035:
  push rax
.Lcontinue1034:
  mov rax, rbp
  sub rax, 64
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1034
.Lend1034:
.Lcase842:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset break_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset break_sequence
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1036
  mov rax, 0
  call gen
  jmp .L.end.1036
.L.call.1036:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1036:
  push rax
  push offset .LC316
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1037
  mov rax, 0
  call printf
  jmp .L.end.1037
.L.call.1037:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1037:
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 104
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1038:
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1038
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 120
  push rax
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC317
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1039
  mov rax, 0
  call printf
  jmp .L.end.1039
.L.call.1039:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1039:
  push rax
  push offset .LC318
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 120
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1040
  mov rax, 0
  call printf
  jmp .L.end.1040
.L.call.1040:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1040:
  push rax
.Lcontinue1038:
  mov rax, rbp
  sub rax, 72
  push rax
  mov rax, rbp
  sub rax, 72
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 104
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin1038
.Lend1038:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 112
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1041
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 112
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 120
  push rax
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC319
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 112
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 120
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1042
  mov rax, 0
  call printf
  jmp .L.end.1042
.L.call.1042:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1042:
  push rax
  jmp .Lend1041
.Lelse1041:
.Lend1041:
  push offset .LC320
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1043
  mov rax, 0
  call printf
  jmp .L.end.1043
.L.call.1043:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1043:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1044
  mov rax, 0
  call gen
  jmp .L.end.1044
.L.call.1044:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1044:
  push rax
  push offset .LC321
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1045
  mov rax, 0
  call printf
  jmp .L.end.1045
.L.call.1045:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1045:
  push rax
  push offset break_sequence
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lcase841:
  push offset .LC322
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 120
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1046
  mov rax, 0
  call printf
  jmp .L.end.1046
.L.call.1046:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1046:
  push rax
.Lcase840:
  push offset if_sequence
  push offset if_sequence
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1047:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1047
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1048
  mov rax, 0
  call gen
  jmp .L.end.1048
.L.call.1048:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1048:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
.Lcontinue1047:
  mov rax, rbp
  sub rax, 76
  push rax
  mov rax, rbp
  sub rax, 76
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1047
.Lend1047:
  push 6
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1049
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC323
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1050
  mov rax, 0
  call error_at0
  jmp .L.end.1050
.L.call.1050:
  sub rsp, 8
  mov rax, 0
  call error_at0
  add rsp, 8
.L.end.1050:
  push rax
  jmp .Lend1049
.Lelse1049:
.Lend1049:
  mov rax, rbp
  sub rax, 80
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1051:
  push 0
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setle al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1051
  push offset .LC324
  push offset argreg8
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1052
  mov rax, 0
  call printf
  jmp .L.end.1052
.L.call.1052:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1052:
  push rax
.Lcontinue1051:
  mov rax, rbp
  sub rax, 80
  push rax
  mov rax, rbp
  sub rax, 80
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  jmp .Lbegin1051
.Lend1051:
  push offset .LC325
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1053
  mov rax, 0
  call printf
  jmp .L.end.1053
.L.call.1053:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1053:
  push rax
  push offset .LC326
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1054
  mov rax, 0
  call printf
  jmp .L.end.1054
.L.call.1054:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1054:
  push rax
  push offset .LC327
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1055
  mov rax, 0
  call printf
  jmp .L.end.1055
.L.call.1055:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1055:
  push rax
  push offset .LC328
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1056
  mov rax, 0
  call printf
  jmp .L.end.1056
.L.call.1056:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1056:
  push rax
  push offset .LC329
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1057
  mov rax, 0
  call printf
  jmp .L.end.1057
.L.call.1057:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1057:
  push rax
  push offset .LC330
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1058
  mov rax, 0
  call printf
  jmp .L.end.1058
.L.call.1058:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1058:
  push rax
  push offset .LC331
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1059
  mov rax, 0
  call printf
  jmp .L.end.1059
.L.call.1059:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1059:
  push rax
  push offset .LC332
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1060
  mov rax, 0
  call printf
  jmp .L.end.1060
.L.call.1060:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1060:
  push rax
  push offset .LC333
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1061
  mov rax, 0
  call printf
  jmp .L.end.1061
.L.call.1061:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1061:
  push rax
  push offset .LC334
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1062
  mov rax, 0
  call printf
  jmp .L.end.1062
.L.call.1062:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1062:
  push rax
  push offset .LC335
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1063
  mov rax, 0
  call printf
  jmp .L.end.1063
.L.call.1063:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1063:
  push rax
  push offset .LC336
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1064
  mov rax, 0
  call printf
  jmp .L.end.1064
.L.call.1064:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1064:
  push rax
  push offset .LC337
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1065
  mov rax, 0
  call printf
  jmp .L.end.1065
.L.call.1065:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1065:
  push rax
.Lcase839:
  push offset .LC338
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1066
  mov rax, 0
  call printf
  jmp .L.end.1066
.L.call.1066:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1066:
  push rax
  push offset .LC339
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1067
  mov rax, 0
  call printf
  jmp .L.end.1067
.L.call.1067:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1067:
  push rax
  push offset .LC340
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1068
  mov rax, 0
  call printf
  jmp .L.end.1068
.L.call.1068:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1068:
  push rax
  push offset .LC341
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1069
  mov rax, 0
  call printf
  jmp .L.end.1069
.L.call.1069:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1069:
  push rax
  push offset locals
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1070
  mov rax, rbp
  sub rax, 84
  push rax
  push offset locals
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push offset .LC342
  mov rax, rbp
  sub rax, 84
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1071
  mov rax, 0
  call printf
  jmp .L.end.1071
.L.call.1071:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1071:
  push rax
  jmp .Lend1070
.Lelse1070:
.Lend1070:
  mov rax, rbp
  sub rax, 88
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1072:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1072
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1073
  push offset .LC343
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset argreg1
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1074
  mov rax, 0
  call printf
  jmp .L.end.1074
.L.call.1074:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1074:
  push rax
  jmp .Lend1073
.Lelse1073:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1075
  push offset .LC344
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset argreg4
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1076
  mov rax, 0
  call printf
  jmp .L.end.1076
.L.call.1076:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1076:
  push rax
  jmp .Lend1075
.Lelse1075:
  push offset .LC345
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset argreg8
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1077
  mov rax, 0
  call printf
  jmp .L.end.1077
.L.call.1077:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1077:
  push rax
  jmp .Lend1075
.Lend1075:
  jmp .Lend1073
.Lend1073:
.Lcontinue1072:
  mov rax, rbp
  sub rax, 88
  push rax
  mov rax, rbp
  sub rax, 88
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1072
.Lend1072:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1078
  mov rax, 0
  call gen
  jmp .L.end.1078
.L.call.1078:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1078:
  push rax
  push offset .LC346
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1079
  mov rax, 0
  call printf
  jmp .L.end.1079
.L.call.1079:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1079:
  push rax
  push offset .LC347
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1080
  mov rax, 0
  call printf
  jmp .L.end.1080
.L.call.1080:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1080:
  push rax
  push offset .LC348
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1081
  mov rax, 0
  call printf
  jmp .L.end.1081
.L.call.1081:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1081:
  push rax
.Lcase838:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1082
  mov rax, 0
  call gen_val
  jmp .L.end.1082
.L.call.1082:
  sub rsp, 8
  mov rax, 0
  call gen_val
  add rsp, 8
.L.end.1082:
  push rax
.Lcase837:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1083
  mov rax, 0
  call gen
  jmp .L.end.1083
.L.call.1083:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1083:
  push rax
  push offset .LC349
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1084
  mov rax, 0
  call printf
  jmp .L.end.1084
.L.call.1084:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1084:
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1085
  mov rax, 0
  call get_type
  jmp .L.end.1085
.L.call.1085:
  sub rsp, 8
  mov rax, 0
  call get_type
  add rsp, 8
.L.end.1085:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1087
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 2
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1087
  push 1
  jmp .Lend1087
.Lfalse1087:
  push 0
.Lend1087:
  pop rax
  cmp rax, 0
  je .Lelse1086
  push offset .LC350
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1088
  mov rax, 0
  call printf
  jmp .L.end.1088
.L.call.1088:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1088:
  push rax
  jmp .Lend1086
.Lelse1086:
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1090
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1090
  push 1
  jmp .Lend1090
.Lfalse1090:
  push 0
.Lend1090:
  pop rax
  cmp rax, 0
  je .Lelse1089
  push offset .LC351
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1091
  mov rax, 0
  call printf
  jmp .L.end.1091
.L.call.1091:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1091:
  push rax
  jmp .Lend1089
.Lelse1089:
  push offset .LC352
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1092
  mov rax, 0
  call printf
  jmp .L.end.1092
.L.call.1092:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1092:
  push rax
  jmp .Lend1089
.Lend1089:
  jmp .Lend1086
.Lend1086:
  push offset .LC353
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1093
  mov rax, 0
  call printf
  jmp .L.end.1093
.L.call.1093:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1093:
  push rax
.Lend836:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1094
  mov rax, 0
  call gen
  jmp .L.end.1094
.L.call.1094:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1094:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1095
  mov rax, 0
  call gen
  jmp .L.end.1095
.L.call.1095:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1095:
  push rax
  push offset .LC354
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1096
  mov rax, 0
  call printf
  jmp .L.end.1096
.L.call.1096:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1096:
  push rax
  push offset .LC355
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1097
  mov rax, 0
  call printf
  jmp .L.end.1097
.L.call.1097:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1097:
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 38
  je .Lcase1099
  cmp rax, 36
  je .Lcase1100
  cmp rax, 37
  je .Lcase1101
  cmp rax, 9
  je .Lcase1102
  cmp rax, 8
  je .Lcase1103
  cmp rax, 7
  je .Lcase1104
  cmp rax, 6
  je .Lcase1105
  cmp rax, 4
  je .Lcase1106
  cmp rax, 3
  je .Lcase1107
  cmp rax, 2
  je .Lcase1108
  cmp rax, 1
  je .Lcase1109
  jmp .Lend1098
.Lcase1109:
  push offset .LC356
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1109
  mov rax, 0
  call printf
  jmp .L.end.1109
.L.call.1109:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1109:
  push rax
  jmp .Lend1098
.Lcase1108:
  push offset .LC357
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1110
  mov rax, 0
  call printf
  jmp .L.end.1110
.L.call.1110:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1110:
  push rax
  jmp .Lend1098
.Lcase1107:
  push offset .LC358
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1111
  mov rax, 0
  call printf
  jmp .L.end.1111
.L.call.1111:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1111:
  push rax
  jmp .Lend1098
.Lcase1106:
  push offset .LC359
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1112
  mov rax, 0
  call printf
  jmp .L.end.1112
.L.call.1112:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1112:
  push rax
  push offset .LC360
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1113
  mov rax, 0
  call printf
  jmp .L.end.1113
.L.call.1113:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1113:
  push rax
  jmp .Lend1098
.Lcase1105:
  push offset .LC361
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1114
  mov rax, 0
  call printf
  jmp .L.end.1114
.L.call.1114:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1114:
  push rax
  push offset .LC362
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1115
  mov rax, 0
  call printf
  jmp .L.end.1115
.L.call.1115:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1115:
  push rax
  push offset .LC363
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1116
  mov rax, 0
  call printf
  jmp .L.end.1116
.L.call.1116:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1116:
  push rax
  jmp .Lend1098
.Lcase1104:
  push offset .LC364
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1117
  mov rax, 0
  call printf
  jmp .L.end.1117
.L.call.1117:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1117:
  push rax
  push offset .LC365
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1118
  mov rax, 0
  call printf
  jmp .L.end.1118
.L.call.1118:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1118:
  push rax
  push offset .LC366
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1119
  mov rax, 0
  call printf
  jmp .L.end.1119
.L.call.1119:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1119:
  push rax
  jmp .Lend1098
.Lcase1103:
  push offset .LC367
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1120
  mov rax, 0
  call printf
  jmp .L.end.1120
.L.call.1120:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1120:
  push rax
  push offset .LC368
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1121
  mov rax, 0
  call printf
  jmp .L.end.1121
.L.call.1121:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1121:
  push rax
  push offset .LC369
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1122
  mov rax, 0
  call printf
  jmp .L.end.1122
.L.call.1122:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1122:
  push rax
  jmp .Lend1098
.Lcase1102:
  push offset .LC370
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1123
  mov rax, 0
  call printf
  jmp .L.end.1123
.L.call.1123:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1123:
  push rax
  push offset .LC371
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1124
  mov rax, 0
  call printf
  jmp .L.end.1124
.L.call.1124:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1124:
  push rax
  push offset .LC372
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1125
  mov rax, 0
  call printf
  jmp .L.end.1125
.L.call.1125:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1125:
  push rax
  jmp .Lend1098
.Lcase1101:
  push offset .LC373
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1126
  mov rax, 0
  call printf
  jmp .L.end.1126
.L.call.1126:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1126:
  push rax
  jmp .Lend1098
.Lcase1100:
  push offset .LC374
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1127
  mov rax, 0
  call printf
  jmp .L.end.1127
.L.call.1127:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1127:
  push rax
  jmp .Lend1098
.Lcase1099:
  push offset .LC375
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1128
  mov rax, 0
  call printf
  jmp .L.end.1128
.L.call.1128:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1128:
  push rax
  jmp .Lend1098
.Lend1098:
  push offset .LC376
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1129
  mov rax, 0
  call printf
  jmp .L.end.1129
.L.call.1129:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1129:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global gen_val
gen_val:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 25
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1130
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1131
  mov rax, 0
  call gen
  jmp .L.end.1131
.L.call.1131:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1131:
  push rax
  jmp .Lend1130
.Lelse1130:
.Lend1130:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 11
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1132
  push offset .LC377
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1133
  mov rax, 0
  call printf
  jmp .L.end.1133
.L.call.1133:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1133:
  push rax
  push offset .LC378
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1134
  mov rax, 0
  call printf
  jmp .L.end.1134
.L.call.1134:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1134:
  push rax
  push offset .LC379
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1135
  mov rax, 0
  call printf
  jmp .L.end.1135
.L.call.1135:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1135:
  push rax
  jmp .Lend1132
.Lelse1132:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 13
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1136
  push offset .LC380
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1137
  mov rax, 0
  call printf
  jmp .L.end.1137
.L.call.1137:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1137:
  push rax
  jmp .Lend1136
.Lelse1136:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 27
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1138
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1139
  mov rax, 0
  call gen_val
  jmp .L.end.1139
.L.call.1139:
  sub rsp, 8
  mov rax, 0
  call gen_val
  add rsp, 8
.L.end.1139:
  push rax
  push offset .LC381
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1140
  mov rax, 0
  call printf
  jmp .L.end.1140
.L.call.1140:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1140:
  push rax
  push offset .LC382
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 96
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1141
  mov rax, 0
  call printf
  jmp .L.end.1141
.L.call.1141:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1141:
  push rax
  push offset .LC383
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1142
  mov rax, 0
  call printf
  jmp .L.end.1142
.L.call.1142:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1142:
  push rax
  jmp .Lend1138
.Lelse1138:
  push offset .LC384
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1143
  mov rax, 0
  call error0
  jmp .L.end.1143
.L.call.1143:
  sub rsp, 8
  mov rax, 0
  call error0
  add rsp, 8
.L.end.1143:
  push rax
  jmp .Lend1138
.Lend1138:
  jmp .Lend1136
.Lend1136:
  jmp .Lend1132
.Lend1132:
  mov rsp, rbp
  pop rbp
  ret
.global read_file
read_file:
  push rbp
  mov rbp, rsp
  sub rsp, 28
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 16
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push offset .LC385
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1144
  mov rax, 0
  call fopen
  jmp .L.end.1144
.L.call.1144:
  sub rsp, 8
  mov rax, 0
  call fopen
  add rsp, 8
.L.end.1144:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1145
  push offset .LC386
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1147
  mov rax, 0
  call strerror
  jmp .L.end.1147
.L.call.1147:
  sub rsp, 8
  mov rax, 0
  call strerror
  add rsp, 8
.L.end.1147:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1146
  mov rax, 0
  call error2
  jmp .L.end.1146
.L.call.1146:
  sub rsp, 8
  mov rax, 0
  call error2
  add rsp, 8
.L.end.1146:
  push rax
  jmp .Lend1145
.Lelse1145:
.Lend1145:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  push 2
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1149
  mov rax, 0
  call fseek
  jmp .L.end.1149
.L.call.1149:
  sub rsp, 8
  mov rax, 0
  call fseek
  add rsp, 8
.L.end.1149:
  push rax
  push 0
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1148
  push offset .LC387
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1151
  mov rax, 0
  call strerror
  jmp .L.end.1151
.L.call.1151:
  sub rsp, 8
  mov rax, 0
  call strerror
  add rsp, 8
.L.end.1151:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1150
  mov rax, 0
  call error2
  jmp .L.end.1150
.L.call.1150:
  sub rsp, 8
  mov rax, 0
  call error2
  add rsp, 8
.L.end.1150:
  push rax
  jmp .Lend1148
.Lelse1148:
.Lend1148:
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1152
  mov rax, 0
  call ftell
  jmp .L.end.1152
.L.call.1152:
  sub rsp, 8
  mov rax, 0
  call ftell
  add rsp, 8
.L.end.1152:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  push 0
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1154
  mov rax, 0
  call fseek
  jmp .L.end.1154
.L.call.1154:
  sub rsp, 8
  mov rax, 0
  call fseek
  add rsp, 8
.L.end.1154:
  push rax
  push 0
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1153
  push offset .LC388
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1156
  mov rax, 0
  call strerror
  jmp .L.end.1156
.L.call.1156:
  sub rsp, 8
  mov rax, 0
  call strerror
  add rsp, 8
.L.end.1156:
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1155
  mov rax, 0
  call error2
  jmp .L.end.1155
.L.call.1155:
  sub rsp, 8
  mov rax, 0
  call error2
  add rsp, 8
.L.end.1155:
  push rax
  jmp .Lend1153
.Lelse1153:
.Lend1153:
  mov rax, rbp
  sub rax, 28
  push rax
  push 1
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 2
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1157
  mov rax, 0
  call calloc
  jmp .L.end.1157
.L.call.1157:
  sub rsp, 8
  mov rax, 0
  call calloc
  add rsp, 8
.L.end.1157:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1158
  mov rax, 0
  call fread
  jmp .L.end.1158
.L.call.1158:
  sub rsp, 8
  mov rax, 0
  call fread
  add rsp, 8
.L.end.1158:
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue1160
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue1160
  push 0
  jmp .Lend1160
.Ltrue1160:
  push 1
.Lend1160:
  pop rax
  cmp rax, 0
  je .Lelse1159
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 10
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  jmp .Lend1159
.Lelse1159:
.Lend1159:
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 10
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1161
  mov rax, 0
  call fclose
  jmp .L.end.1161
.L.call.1161:
  sub rsp, 8
  mov rax, 0
  call fclose
  add rsp, 8
.L.end.1161:
  push rax
  mov rax, rbp
  sub rax, 28
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
.global print_token
print_token:
  push rbp
  mov rbp, rsp
  sub rsp, 108
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1162
  push 0
  push offset .LC389
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1163
  mov rax, 0
  call fprintf
  jmp .L.end.1163
.L.call.1163:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1163:
  push rax
  jmp .Lend1162
.Lelse1162:
  mov rax, rbp
  sub rax, 108
  push rax
  push 0
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 2
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 3
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 4
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 5
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 6
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 7
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 8
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 9
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 10
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 11
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 12
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 13
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 14
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 15
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 16
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 17
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 18
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 19
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 20
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 21
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 22
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 23
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 24
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 25
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 26
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 27
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 28
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 29
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 30
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 31
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 32
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 33
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 34
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 35
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 36
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 37
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 38
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 39
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 40
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 41
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 42
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 43
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 44
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 45
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 46
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 47
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 48
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 49
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 50
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 51
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 52
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 53
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 54
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 55
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 56
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 57
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 58
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 59
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 60
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 61
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 62
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 63
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 64
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 65
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 66
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 67
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 68
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 69
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 70
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 71
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 72
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 73
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 74
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 75
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 76
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 77
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 78
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 79
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 80
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 81
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 82
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 83
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 84
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 85
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 86
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 87
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 88
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 89
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 90
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 91
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 92
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 93
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 94
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 95
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 96
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 97
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 98
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  push 99
  pop rdi
  pop rax
  add rax, rdi
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], dil
  push rdi
  mov rax, rbp
  sub rax, 108
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 32
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1164
  mov rax, 0
  call memcpy
  jmp .L.end.1164
.L.call.1164:
  sub rsp, 8
  mov rax, 0
  call memcpy
  add rsp, 8
.L.end.1164:
  push rax
  push 0
  push offset .LC390
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 108
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1165
  mov rax, 0
  call fprintf
  jmp .L.end.1165
.L.call.1165:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1165:
  push rax
  jmp .Lend1162
.Lend1162:
  mov rsp, rbp
  pop rbp
  ret
.global print_type
print_type:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1166
  push 0
  push offset .LC391
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1167
  mov rax, 0
  call fprintf
  jmp .L.end.1167
.L.call.1167:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1167:
  push rax
  jmp .Lend1166
.Lelse1166:
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 5
  je .Lcase1169
  cmp rax, 4
  je .Lcase1170
  cmp rax, 3
  je .Lcase1171
  cmp rax, 2
  je .Lcase1172
  cmp rax, 1
  je .Lcase1173
  jmp .Lcase1174
  jmp .Lend1168
.Lcase1173:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset .LC392
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1168
.Lcase1172:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset .LC393
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1168
.Lcase1171:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset .LC394
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1168
.Lcase1170:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset .LC395
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1168
.Lcase1169:
  mov rax, rbp
  sub rax, 16
  push rax
  push offset .LC396
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lcase1174:
  jmp .Lend1168
.Lend1168:
  push 0
  push offset .LC397
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1174
  mov rax, 0
  call fprintf
  jmp .L.end.1174
.L.call.1174:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1174:
  push rax
  jmp .Lend1166
.Lend1166:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1176
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 4
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue1177
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 3
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  jne .Ltrue1177
  push 0
  jmp .Lend1177
.Ltrue1177:
  push 1
.Lend1177:
  pop rax
  cmp rax, 0
  je .Lfalse1176
  push 1
  jmp .Lend1176
.Lfalse1176:
  push 0
.Lend1176:
  pop rax
  cmp rax, 0
  je .Lelse1175
  jmp .Lend1175
.Lelse1175:
.Lend1175:
  push 0
  push offset .LC398
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1178
  mov rax, 0
  call fprintf
  jmp .L.end.1178
.L.call.1178:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1178:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global print_node
print_node:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-8], rdi
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1179
  push 0
  push offset .LC399
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1180
  mov rax, 0
  call fprintf
  jmp .L.end.1180
.L.call.1180:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1180:
  push rax
  jmp .Lend1179
.Lelse1179:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1181
  push 0
  push offset .LC400
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1182
  mov rax, 0
  call fprintf
  jmp .L.end.1182
.L.call.1182:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1182:
  push rax
  jmp .Lend1181
.Lelse1181:
.Lend1181:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1183
  push 0
  push offset .LC401
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 64
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1184
  mov rax, 0
  call fprintf
  jmp .L.end.1184
.L.call.1184:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1184:
  push rax
  jmp .Lend1183
.Lelse1183:
.Lend1183:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1185
  push 0
  push offset .LC402
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 72
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1186
  mov rax, 0
  call fprintf
  jmp .L.end.1186
.L.call.1186:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1186:
  push rax
  jmp .Lend1185
.Lelse1185:
.Lend1185:
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1187
  push 0
  push offset .LC403
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1188
  mov rax, 0
  call fprintf
  jmp .L.end.1188
.L.call.1188:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1188:
  push rax
  jmp .Lend1187
.Lelse1187:
.Lend1187:
  jmp .Lend1179
.Lend1179:
  mov rsp, rbp
  pop rbp
  ret
.global error0
error0:
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov [rbp-8], rdi
  push 0
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1189
  mov rax, 0
  call fprintf
  jmp .L.end.1189
.L.call.1189:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1189:
  push rax
  push 0
  push offset .LC404
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1190
  mov rax, 0
  call fprintf
  jmp .L.end.1190
.L.call.1190:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1190:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1191
  mov rax, 0
  call exit
  jmp .L.end.1191
.L.call.1191:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1191:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global error1
error1:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  push 0
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1192
  mov rax, 0
  call fprintf
  jmp .L.end.1192
.L.call.1192:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1192:
  push rax
  push 0
  push offset .LC405
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1193
  mov rax, 0
  call fprintf
  jmp .L.end.1193
.L.call.1193:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1193:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1194
  mov rax, 0
  call exit
  jmp .L.end.1194
.L.call.1194:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1194:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global error2
error2:
  push rbp
  mov rbp, rsp
  sub rsp, 24
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov [rbp-24], rdx
  push 0
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1195
  mov rax, 0
  call fprintf
  jmp .L.end.1195
.L.call.1195:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1195:
  push rax
  push 0
  push offset .LC406
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1196
  mov rax, 0
  call fprintf
  jmp .L.end.1196
.L.call.1196:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1196:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1197
  mov rax, 0
  call exit
  jmp .L.end.1197
.L.call.1197:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1197:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global error_at0
error_at0:
  push rbp
  mov rbp, rsp
  sub rsp, 52
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1198:
.Lcontinue1198:
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1199
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1199
  push 1
  jmp .Lend1199
.Lfalse1199:
  push 0
.Lend1199:
  pop rax
  cmp rax, 0
  je .Lend1198
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  jmp .Lbegin1198
.Lend1198:
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1200:
.Lcontinue1200:
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1200
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1200
.Lend1200:
  mov rax, rbp
  sub rax, 36
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1201:
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1201
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1202
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lend1202
.Lelse1202:
.Lend1202:
.Lcontinue1201:
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1201
.Lend1201:
  mov rax, rbp
  sub rax, 48
  push rax
  push 0
  push offset .LC407
  push offset filename
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1203
  mov rax, 0
  call fprintf
  jmp .L.end.1203
.L.call.1203:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1203:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC408
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1204
  mov rax, 0
  call fprintf
  jmp .L.end.1204
.L.call.1204:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1204:
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC409
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset .LC410
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1205
  mov rax, 0
  call fprintf
  jmp .L.end.1205
.L.call.1205:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1205:
  push rax
  push 0
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1206
  mov rax, 0
  call fprintf
  jmp .L.end.1206
.L.call.1206:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1206:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1207
  mov rax, 0
  call exit
  jmp .L.end.1207
.L.call.1207:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1207:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global error_at1
error_at1:
  push rbp
  mov rbp, rsp
  sub rsp, 60
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov [rbp-24], rdx
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1208:
.Lcontinue1208:
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1209
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1209
  push 1
  jmp .Lend1209
.Lfalse1209:
  push 0
.Lend1209:
  pop rax
  cmp rax, 0
  je .Lend1208
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  jmp .Lbegin1208
.Lend1208:
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1210:
.Lcontinue1210:
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1210
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1210
.Lend1210:
  mov rax, rbp
  sub rax, 44
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1211:
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1211
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1212
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lend1212
.Lelse1212:
.Lend1212:
.Lcontinue1211:
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1211
.Lend1211:
  mov rax, rbp
  sub rax, 56
  push rax
  push 0
  push offset .LC411
  push offset filename
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1213
  mov rax, 0
  call fprintf
  jmp .L.end.1213
.L.call.1213:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1213:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC412
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1214
  mov rax, 0
  call fprintf
  jmp .L.end.1214
.L.call.1214:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1214:
  push rax
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 56
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC413
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset .LC414
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1215
  mov rax, 0
  call fprintf
  jmp .L.end.1215
.L.call.1215:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1215:
  push rax
  push 0
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1216
  mov rax, 0
  call fprintf
  jmp .L.end.1216
.L.call.1216:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1216:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1217
  mov rax, 0
  call exit
  jmp .L.end.1217
.L.call.1217:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1217:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global error_at2
error_at2:
  push rbp
  mov rbp, rsp
  sub rsp, 68
  mov [rbp-8], rdi
  mov [rbp-16], rsi
  mov [rbp-24], rdx
  mov [rbp-32], rcx
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1218:
.Lcontinue1218:
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1219
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lfalse1219
  push 1
  jmp .Lend1219
.Lfalse1219:
  push 0
.Lend1219:
  pop rax
  cmp rax, 0
  je .Lend1218
  mov rax, rbp
  sub rax, 40
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  jmp .Lbegin1218
.Lend1218:
  mov rax, rbp
  sub rax, 48
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1220:
.Lcontinue1220:
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1220
  mov rax, rbp
  sub rax, 48
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1220
.Lend1220:
  mov rax, rbp
  sub rax, 52
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 60
  push rax
  push offset user_input
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1221:
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1221
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  movsx rax, BYTE PTR [rax]
  push rax
  push 10
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1222
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lend1222
.Lelse1222:
.Lend1222:
.Lcontinue1221:
  mov rax, rbp
  sub rax, 60
  push rax
  mov rax, rbp
  sub rax, 60
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1221
.Lend1221:
  mov rax, rbp
  sub rax, 64
  push rax
  push 0
  push offset .LC415
  push offset filename
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1223
  mov rax, 0
  call fprintf
  jmp .L.end.1223
.L.call.1223:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1223:
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC416
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1224
  mov rax, 0
  call fprintf
  jmp .L.end.1224
.L.call.1224:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1224:
  push rax
  mov rax, rbp
  sub rax, 68
  push rax
  mov rax, rbp
  sub rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 1
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  mov rax, rbp
  sub rax, 64
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 0
  push offset .LC417
  mov rax, rbp
  sub rax, 68
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset .LC418
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1225
  mov rax, 0
  call fprintf
  jmp .L.end.1225
.L.call.1225:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1225:
  push rax
  push 0
  mov rax, rbp
  sub rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rcx
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1226
  mov rax, 0
  call fprintf
  jmp .L.end.1226
.L.call.1226:
  sub rsp, 8
  mov rax, 0
  call fprintf
  add rsp, 8
.L.end.1226:
  push rax
  push 1
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1227
  mov rax, 0
  call exit
  jmp .L.end.1227
.L.call.1227:
  sub rsp, 8
  mov rax, 0
  call exit
  add rsp, 8
.L.end.1227:
  push rax
  mov rsp, rbp
  pop rbp
  ret
.global main
main:
  push rbp
  mov rbp, rsp
  sub rsp, 52
  mov [rbp-4], edi
  mov [rbp-12], rsi
  mov rax, rbp
  sub rax, 20
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC419
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1228
  mov rax, 0
  call printf
  jmp .L.end.1228
.L.call.1228:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1228:
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  push 1
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1229:
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rdi
  pop rax
  cmp rax, rdi
  setl al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lend1229
  push offset filename
  mov rax, rbp
  sub rax, 12
  push rax
  pop rax
  mov rax, [rax]
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset .LC420
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push offset filename
  pop rax
  mov rax, [rax]
  push rax
  pop rdx
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1230
  mov rax, 0
  call printf
  jmp .L.end.1230
.L.call.1230:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1230:
  push rax
  push offset user_input
  push offset filename
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1231
  mov rax, 0
  call read_file
  jmp .L.end.1231
.L.call.1231:
  sub rsp, 8
  mov rax, 0
  call read_file
  add rsp, 8
.L.end.1231:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  mov rax, rbp
  sub rax, 20
  push rax
  mov rax, rsp
  and rax, 15
  jnz .L.call.1232
  mov rax, 0
  call tokenize
  jmp .L.end.1232
.L.call.1232:
  sub rsp, 8
  mov rax, 0
  call tokenize
  add rsp, 8
.L.end.1232:
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1233
  push offset token
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1233
.Lelse1233:
  mov rax, rbp
  sub rax, 32
  push rax
  push offset token
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1234:
.Lcontinue1234:
  push 1
  pop rax
  cmp rax, 0
  je .Lend1234
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 3
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1235
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1234
  jmp .Lend1235
.Lelse1235:
.Lend1235:
  mov rax, rbp
  sub rax, 32
  push rax
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin1234
.Lend1234:
  mov rax, rbp
  sub rax, 32
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  mov rax, rbp
  sub rax, 20
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lend1233
.Lend1233:
.Lcontinue1229:
  mov rax, rbp
  sub rax, 24
  push rax
  mov rax, rbp
  sub rax, 24
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1229
.Lend1229:
  push offset .LC421
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1236
  mov rax, 0
  call printf
  jmp .L.end.1236
.L.call.1236:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1236:
  push rax
  push offset cur_scope_depth
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1237
  mov rax, 0
  call program
  jmp .L.end.1237
.L.call.1237:
  sub rsp, 8
  mov rax, 0
  call program
  add rsp, 8
.L.end.1237:
  push rax
  push offset .LC422
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1238
  mov rax, 0
  call printf
  jmp .L.end.1238
.L.call.1238:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1238:
  push rax
  push offset .LC423
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1239
  mov rax, 0
  call printf
  jmp .L.end.1239
.L.call.1239:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1239:
  push rax
  push offset .LC424
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1240
  mov rax, 0
  call printf
  jmp .L.end.1240
.L.call.1240:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1240:
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1241:
  push offset code
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1241
  push offset code
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 12
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1242
  push offset code
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1243
  push offset code
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1244
  mov rax, 0
  call gen
  jmp .L.end.1244
.L.call.1244:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1244:
  push rax
  jmp .Lend1243
.Lelse1243:
.Lend1243:
  jmp .Lend1242
.Lelse1242:
.Lend1242:
.Lcontinue1241:
  mov rax, rbp
  sub rax, 36
  push rax
  mov rax, rbp
  sub rax, 36
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1241
.Lend1241:
  push offset .LC425
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1245
  mov rax, 0
  call printf
  jmp .L.end.1245
.L.call.1245:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1245:
  push rax
  push offset .LC426
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1246
  mov rax, 0
  call printf
  jmp .L.end.1246
.L.call.1246:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1246:
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  push offset strings
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
.Lbegin1247:
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1247
  push offset .LC427
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 8
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1248
  mov rax, 0
  call printf
  jmp .L.end.1248
.L.call.1248:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1248:
  push rax
  push offset .LC428
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1249
  mov rax, 0
  call printf
  jmp .L.end.1249
.L.call.1249:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1249:
  push rax
.Lcontinue1247:
  mov rax, rbp
  sub rax, 44
  push rax
  mov rax, rbp
  sub rax, 44
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 16
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  pop rax
  mov [rax], rdi
  push rdi
  jmp .Lbegin1247
.Lend1247:
  push offset .LC429
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1250
  mov rax, 0
  call printf
  jmp .L.end.1250
.L.call.1250:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1250:
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1251:
  push offset code
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1251
  push offset code
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 12
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1252
  push offset code
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 88
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 40
  push rax
  pop rax
  mov rax, [rax]
  push rax
  push 0
  pop rdi
  pop rax
  cmp rax, rdi
  setne al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1253
  push offset code
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1254
  mov rax, 0
  call gen
  jmp .L.end.1254
.L.call.1254:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1254:
  push rax
  jmp .Lend1253
.Lelse1253:
.Lend1253:
  jmp .Lend1252
.Lelse1252:
.Lend1252:
.Lcontinue1251:
  mov rax, rbp
  sub rax, 48
  push rax
  mov rax, rbp
  sub rax, 48
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1251
.Lend1251:
  push offset .LC430
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1255
  mov rax, 0
  call printf
  jmp .L.end.1255
.L.call.1255:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1255:
  push rax
  push offset .LC431
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1256
  mov rax, 0
  call printf
  jmp .L.end.1256
.L.call.1256:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1256:
  push rax
  push offset .LC432
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1257
  mov rax, 0
  call printf
  jmp .L.end.1257
.L.call.1257:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1257:
  push rax
  push offset cur_scope_depth
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  mov rax, rbp
  sub rax, 52
  push rax
  push 0
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
.Lbegin1258:
  push offset code
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  cmp rax, 0
  je .Lend1258
  push offset code
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rax
  add rax, 0
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 23
  pop rdi
  pop rax
  cmp rax, rdi
  sete al
  movzb rax, al
  push rax
  pop rax
  cmp rax, 0
  je .Lelse1259
  push offset cur_scope_depth
  push offset cur_scope_depth
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  push offset code
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 8
  pop rdi
  pop rax
  imul rax, rdi
  push rax
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rax
  mov rax, [rax]
  push rax
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1260
  mov rax, 0
  call gen
  jmp .L.end.1260
.L.call.1260:
  sub rsp, 8
  mov rax, 0
  call gen
  add rsp, 8
.L.end.1260:
  push rax
  jmp .Lend1259
.Lelse1259:
.Lend1259:
.Lcontinue1258:
  mov rax, rbp
  sub rax, 52
  push rax
  mov rax, rbp
  sub rax, 52
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  push 1
  pop rdi
  pop rax
  add rax, rdi
  push rax
  pop rdi
  pop rax
  mov [rax], edi
  push rdi
  push 1
  pop rdi
  pop rax
  sub rax, rdi
  push rax
  jmp .Lbegin1258
.Lend1258:
  push offset .LC433
  mov rax, rbp
  sub rax, 4
  push rax
  pop rax
  movsxd rax, DWORD PTR [rax]
  push rax
  pop rsi
  pop rdi
  mov rax, rsp
  and rax, 15
  jnz .L.call.1261
  mov rax, 0
  call printf
  jmp .L.end.1261
.L.call.1261:
  sub rsp, 8
  mov rax, 0
  call printf
  add rsp, 8
.L.end.1261:
  push rax
  push 0
  pop rax
  mov rsp, rbp
  pop rbp
  ret
  mov rsp, rbp
  pop rbp
  ret
