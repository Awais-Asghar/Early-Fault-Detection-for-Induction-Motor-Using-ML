x1=[out.Is_a out.Is_b out.Is_c out.Ir_a out.Ir_b out.Ir_c out.Pin out.Rotor_frequency out.Rotor_speed out.Torque_induced out.Efficiency];
labels= zeros(size(x1,1),1);
%labels(250:10000)=4;
normal_op4=[x1, labels];
%labeled_dataset= vertcat(normal_op, normal_op1, normal_op2, normal_op3, normal_op4, broken_rotor, broken_rotor1, open_circuit, open_circuit1, open_circuit2, overload, overload1, short_circuit, short_circuit1, short_circuit2);
%csvwrite('fault_dataset.csv', labeledData)

%labeled_dataset= vertcat(Labeled_data, normal_op3, normal_op4);