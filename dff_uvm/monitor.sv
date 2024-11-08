// Monitor

class dff_monitor extends uvm_monitor;
`uvm_component_utils(dff_monitor)

function new(string name = "dff_monitor", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Monitor class", "Constructor", UVM_MEDIUM)
endfunction

endclass
