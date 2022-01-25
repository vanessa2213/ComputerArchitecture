import the_pkg::*;


module rom
            (input  logic [Pb-1:0] address,
             output logic           [INST_WIDTH-1:0] instruction
            );

logic [INST_WIDTH-1:0] inst_mem [MAX_NUM_INST];



always_comb begin
    instruction = inst_mem[address];
end

endmodule