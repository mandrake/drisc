let p = [
  Instr(ADDI(Reg(0), Const(5), Reg(2)));
  Instr(ADDI(Reg(0), Const(6), Reg(3)));
  Instr(IFGE(Reg(2), Reg(0), LabLab("cont")));
  LabInstr(LabLab("cont"),END);
];;

