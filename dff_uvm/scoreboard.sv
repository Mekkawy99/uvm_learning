// Scoreboard

class dff_scoreboard extends uvm_scoreboard;
`uvm_component_utils(dff_scoreboard)

function new(string name = "dff_scoreboard", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Scoreboard class", "Constructor", UVM_MEDIUM)
endfunction
// build phase
function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
endfunction

endclass
