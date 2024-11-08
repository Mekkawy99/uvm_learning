// Sequencer

class dff_sequencer extends uvm_sequencer#(dff_seq_item);
`uvm_component_utils(dff_sequencer)

function new(string name = "dff_sequencer", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Sequencer class", "Constructor", UVM_MEDIUM)
endfunction

// build phase (sequnce and sequence item are not components)

endclass
