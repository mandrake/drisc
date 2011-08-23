(** Reg0 ind V1
    Reg1 ind V2
    Reg2 dim Vector 
    Reg(0) ris *)
let vector_vector = [
	Instr(LDI(Reg(0), Const(0), Reg(3)));
	Instr(LDI(Reg(1), Const(0), Reg(4)));
	Instr(LDI(Reg(2), Const(0), Reg(5)));
	LabInstr(LabLab("loop"),LD(Reg(3), Reg(6), Reg(7)));
	Instr(LD(Reg(4), Reg(6), Reg(8)));
	Instr(MUL(Reg(7), Reg(8), Reg(9)));
	Instr(ADD(Reg(10), Reg(9), Reg(10)));
	Instr(IFLE(Reg(5), Reg(6), LabLab("loop")));
	Instr(STI(Reg(0), Const(0), Reg(10)));
	Instr(END);
];;
	
