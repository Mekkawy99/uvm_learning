// Driver

class dff_driver extends uvm_driver#(dff_seq_item); // Driver is getting values from sequencer
`uvm_component_utils(dff_driver)

function new(string name = "dff_driver", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Driver class", "Constructor", UVM_MEDIUM)
endfunction
// build phase
function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
endfunction

endclass
