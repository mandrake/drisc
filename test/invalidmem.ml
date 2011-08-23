(* Sample of invalid memory access with default values *)

let p = [
  Instr(ADDI(Reg(1), Const(300), Reg(1)));
  Instr(LD(Reg(1), Reg(0), Reg(2)));
  Instr(END);
];
