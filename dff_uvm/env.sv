// Environment

class dff_env extends uvm_env;
`uvm_component_utils(dff_env)

function new(string name = "dff_env", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Env class", "Constructor", UVM_MEDIUM)
endfunction

endclass
