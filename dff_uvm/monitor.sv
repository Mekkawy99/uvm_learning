// Monitor

class dff_monitor extends uvm_monitor;
`uvm_component_utils(dff_monitor)

function new(string name = "dff_monitor", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Monitor class", "Constructor", UVM_MEDIUM)
endfunction

// build phase
function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
endfunction

endclass
