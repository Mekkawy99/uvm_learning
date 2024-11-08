// Environment

class dff_env extends uvm_env;
`uvm_component_utils(dff_env)

// Handles/pointers of classes agent anc scoreboard
dff_agent agent;
dff_scoreboard scb;

function new(string name = "dff_env", uvm_component parent);
    super.new(name, parent);
    `uvm_info("Env class", "Constructor", UVM_MEDIUM)
endfunction

// build phase
function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Create lower components
    agent = dff_agent::type_id::create("agent", this);
    scb   = dff_scoreboard::type_id::create("scb", this);
    
endfunction

endclass
