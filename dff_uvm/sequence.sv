class dff_sequence extends uvm_sequence;
`uvm_object_utils(dff_sequence) // sequence is not a component but it is an object.

function new(string name = "dff_sequence"); // No parent as it is not a component.
    super.new(name);
    `uvm_info("Sequence class", "Constructor", UVM_MEDIUM)
endfunction

endclass
