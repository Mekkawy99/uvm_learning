// Sequence item

class dff_seq_item extends uvm_seq_item;
`uvm_object_utils(dff_seq_item) // sequence is not a component but it is an object.

function new(string name = "dff_seq_item"); // No parent as it is not a component.
    super.new(name);
    `uvm_info("Sequence item class", "Constructor", UVM_MEDIUM)
endfunction

// No phases as it is an object not a component

endclass
