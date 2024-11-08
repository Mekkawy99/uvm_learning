// Driver

class dff_driver extends uvm_driver;
`uvm_component_utils(dff_driver)

function new(string name = "dff_driver", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Driver class", "Constructor", UVM_MEDIUM)
endfunction

endclass
