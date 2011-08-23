(* Memory-less example. calculates factorial of the value
content in R0 *)

let p = [
  Instr(ADDI(Reg(0), Const(5), Reg(0)));
  Instr(ADDI(Reg(1), Const(1), Reg(1)));
  LabInstr(LabLab("loop"),MUL(Reg(0), Reg(1), Reg(1)));
  Instr(DEC(Reg(0)));
  Instr(IFGE(Reg(0), Reg(2), LabLab("loop")));
  Instr(END);
];;
